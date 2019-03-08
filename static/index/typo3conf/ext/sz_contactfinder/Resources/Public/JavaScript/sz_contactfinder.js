function initContactFinder() {

    jQuery('.szCfGeocheck').each(function() {
        var holder = jQuery(this);
        holder.data('szContactFinder', new szContactFinder({
            holder: this,
            isGeocheck: true,
            map: '.map',
            autocomplete: '.szCfAutocomplete',
            navigation: '.szCfGeolocation',
            category: '.szCfCategory'
        }));
    });

	jQuery('.szCfMapTeaser').each(function() {
		var holder = jQuery(this);

		holder.data('szContactFinder', new szContactFinder({
			holder: this,
			isTeaser: true,
			map: '.map',
            openInfowindow: true,
			autocomplete: '.szCfAutocomplete',
			geolocation: '.szCfGeolocation',
			searchform: '.szCfSearchform',
			category: '.szCfCategory'
		}));
	});

    jQuery('.szCfMapList').each(function() {
        var holder = jQuery(this);

        holder.data('szContactFinder', new szContactFinder({
            holder: this,
            isList: true,
            map: '.map',
            openInfowindow: true,
            autocomplete: '.szCfAutocomplete',
            geolocation: '.szCfGeolocation',
            searchform: '.szCfSearchform',
            category: '.szCfCategory',
            results: '.results-holder'
        }));
    });

	jQuery('.szCfFlyout').each(function() {
		var holder = jQuery(this);

		holder.data('szContactFinder', new szContactFinder({
			holder: this,
            isFlyout: true,
			map: '.map',
            markerZoom: 10,
            openInfowindow: ($('body').data('languid') == '5' ? true : false),
			autocomplete: '.szCfAutocomplete',
			geolocation: '.szCfGeolocation',
			searchform: '.szCfSearchform',
			category: '.szCfCategory',
			results: '.result-area'
		}));
	});


}

function szContactFinderTriggerInitFlyout() {
    var $elem = $('.szCfFlyout');
    if ($elem.hasClass('szCfTriggerInit')) {
        $elem.data('szContactFinder').setForceInit();
    }
}

function szContactFinderTriggerInitGeocheck() {
    var $elem = $('.szCfGeocheck');
    if ($elem.hasClass('szCfTriggerInit')) {
        $elem.data('szContactFinder').setForceInit();
    }
}

function szContactFinder(opt) {
    this.options = jQuery.extend({
        holder: null,
        isFlyout: false,
        isTeaser: false,
        isList: false,
        isGeocheck: false,
        isPowermailReceiver: true,
        map: null,
        autocomplete: null,
        navigator: null,
        searchform: null,
        category: null,
        results: null,
        maxWidthInfowindow: 400,
        openInfowindow: false,
        markerZoom: 14,
        defaultOptions: {
            zoom: 2,
            center: new google.maps.LatLng(50.9399523,6.9624988),
            scaleControl: false,
            panControl: false,
            rotateControl: false,
            zoomControl: true,
            mapTypeControl: false,
            overviewMapControl: false,
            streetViewControl: false,
            scrollwheel: false,
            draggable: true,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            styles: [
                {
                    "featureType": "road.highway",
                    "elementType": "geometry",
                    "stylers": [
                        {"saturation": -100},
                        {"lightness": -8},
                        {"gamma": 1.18}
                    ]
                },
                {
                    "featureType": "road.arterial",
                    "elementType": "geometry",
                    "stylers": [
                        {"saturation": -100},
                        {"gamma": 1},
                        {"lightness": -24}
                    ]
                },
                {
                    "featureType": "poi",
                    "elementType": "geometry",
                    "stylers": [
                        {"saturation": -100}
                    ]
                },
                {
                    "featureType": "administrative",
                    "stylers": [
                        {"saturation": -100}
                    ]
                },
                {
                    "featureType": "transit",
                    "stylers": [
                        {"saturation": -100}
                    ]
                },
                {
                    "featureType": "water",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {"saturation": -100}
                    ]
                },
                {
                    "featureType": "road",
                    "stylers": [
                        {"saturation": -100}
                    ]
                },
                {
                    "featureType": "administrative",
                    "stylers": [
                        {"saturation": -100}
                    ]
                },
                {
                    "featureType": "landscape",
                    "stylers": [
                        {"saturation": -100}
                    ]
                },
                {
                    "featureType": "poi",
                    "stylers": [
                        {"saturation": -100}
                    ]
                }
            ]
        }
    }, opt);
    if (this.options.initGeodata) {
        this.initGeodata();
    } else {
        this.init();
    }
}



szContactFinder.prototype = {

    setForceInit: function() {
        var _this = this;
        _this.forceInit = true;
        _this.init();
    },

    /* initialize plugin */
    init: function () {
        if (this.options.holder) {

            this.findElements();
            this.cookie = this.getCookie('location');

            if (this.holder.hasClass('szCfTriggerInit') && !this.forceInit) {

                if(this.options.isFlyout) {
                    if (this.holder.find('.contact-wrapper').html() != '' && !this.cookie.isUserSelected) {
                        this.updateHeader();
                    } else {
                        this.ajaxContactPerson();
                    }
                }

                if (this.holder.hasClass('szCfMapTeaser')) {
                    var _this = this;

                    $(window).scroll(function() {
                        var scroll = $(window).scrollTop();
                        if(!_this.forceInit && _this.holder.offset().top - $(window).height() - scroll <= 0) {
                            _this.forceInit = true;
                            _this.init();
                        }
                    });
                }

                return 0;
            }

            this.makeMap();
            this.makeAutocomplete();
            this.makeEventListener();
            this.makeForm();

            this.matchCategory();

            jcf.destroyAll();
            initCustomForms();

            /* do initial request */
            if(this.holder.data('geolocation') == 1 ||
                (this.holder.data('maptype') == 'dynamic' && this.cookie.autocomplete)) {
                this.ajaxContactPerson();
            } else if(this.options.isFlyout) {
                this.updateHeader();
            }

            if(this.options.isPowermailReceiver && !this.cookie.isUserSelected) {
                this.ajaxPowermailReceiver();
            }

            /* update powermail receiver */
            if(this.options.isGeocheck) {
                this.ajaxPowermailReceiver();

                if (this.categoryDropdown.hasClass('szCfPowermailReceiver')) {
                    this.cookie.category = this.categoryDropdown.val();
                    this.setCookie('location', this.cookie);
                    this.ajaxPowermailReceiver();
                }

                /* prefill also possible powermail input fields */
                if (this.holder.parents('.tx-powermail').length) {
                    this.updateForm();
                }
            }

            /* open flyout automaticly */
            if(this.options.isFlyout && $('body').data('cf-open') == 1 && $(this.cookie.opener).length == 0) {
                var _this = this;
                _this.cookie.opener = 1;
                if ($('body').data('cf-open-delay') && $('body').data('cf-open-delay') > 0) {
                    window.setTimeout(function() {
                        _this.holder.find('.contact-opener:first-child').trigger('click');
                        _this.setCookie('location', _this.cookie);
                    }, $('body').data('cf-open-delay') * 1000);
                } else {
                    _this.holder.find('.contact-opener:first-child').trigger('click');
                    _this.setCookie('location', _this.cookie);
                }
            }
        }
    },

    /* get the current geoip data if no cookie is set */
    initGeodata: function() {
        var _this = this;
        var cookie = _this.getCookie('location');

        if(typeof cookie == 'undefined') {
            _this.findElements();
            _this.ajaxGeodata();
        } else {
            initContactFinder();
        }
    },

    findElements: function () {
        this.holder = jQuery(this.options.holder);
        this.map = this.holder.find(this.options.map);
        this.autocomplete = this.holder.find(this.options.autocomplete);
        this.navigatior = this.holder.find(this.options.navigator);
        this.searchForm = this.holder.find(this.options.searchform);
        this.categoryDropdown = this.holder.find(this.options.category);
        this.resultsArea = this.holder.find(this.options.results);

        /* if we have no storage use it from flyout */
        if (this.options.isGeocheck && !this.holder.data('storage')) {
            var flyout = $('.szCfFlyout');
            this.holder.data('search', flyout.data('search'));
            this.holder.data('storage', flyout.data('storage'));
            this.holder.data('searchstorage', flyout.data('searchstorage'));
        }
        if (this.holder.data('disablepowermailreceiver')) {
            this.options.isPowermailReceiver = false;
        }
    },

    /* make the map */
    makeMap: function() {
        var _this = this;

        /* do not create the map */
        if (!_this.map.length) {
            return 0;
        }

        _this.mapOptions = jQuery.extend({}, _this.options.defaultOptions, {});
        _this.mapCanvas = new google.maps.Map(_this.map[0], _this.mapOptions);

        /* set the infowindow */
        _this.infowindow = new google.maps.InfoWindow({
            content: '',
            maxWidth: _this.options.maxWidthInfowindow
        });

        /* create map with dynamic or static markers */
        if (_this.options.isGeocheck || _this.holder.data('maptype') == 'dynamic') {

            /* set the marker */
            _this.marker = new google.maps.Marker({
                visible: false,
                map: _this.mapCanvas,
                icon: 'typo3conf/ext/sz_contactfinder/Resources/Public/Images/location.png'
            });
            google.maps.event.addListener(_this.marker, 'click', function() {
                _this.infowindow.open(_this.mapCanvas, _this.marker);
            });

            /* set defined marker given from extension */
            if (_this.holder.data('latitude') && _this.holder.data('longitude')) {
                _this.updateMarker(
                    _this.holder.data('latitude'),
                    _this.holder.data('longitude'),
                    _this.holder.find('.infowindow-holder').html()
                );
            }
        } else {
            var latLng = null;
            _this.bounds = new google.maps.LatLngBounds();
            _this.holder.find('.infowindow-holder').each(function() {
                var elem = $(this);
                latLng = new google.maps.LatLng(
                    elem.data('latitude'),
                    elem.data('longitude')
                );
                var marker = new google.maps.Marker({
                    position: latLng,
                    map: _this.mapCanvas,
                    animation: google.maps.Animation.DROP,
                    icon: '/typo3conf/ext/sz_individually_emco/Resources/Public/Images/location.png'
                });
                google.maps.event.addListener(marker, 'click', function() {
                    _this.infowindow.setContent(elem.html());
                    _this.infowindow.open(_this.mapCanvas, marker);
                });
                _this.bounds.extend(latLng);
            });

            if (_this.holder.find('.infowindow-holder').length) {
                /* fit to bounds if we have more then one marker */
                _this.mapCanvas.fitBounds(_this.bounds);
            } else {
                /* set zoom if we have only one marker */
                _this.mapCanvas.setCenter(latLng);
                _this.mapCanvas.setZoom(_this.options.markerZoom);
            }
        }
    },

    /* make the autocomplete function */
    makeAutocomplete: function() {
        var _this = this;

        /* do not crate autocomplete function */
        if (!_this.autocomplete.length) {
            return 0;
        }

        /* set prefilled autocomplete value */
        if (_this.cookie.autocomplete) {
            _this.autocomplete.val(_this.cookie.autocomplete);
        }

        /* create autocomplete object */
        _this.autocompleteElement = new google.maps.places.Autocomplete(
            _this.autocomplete[0], {
                types: ['geocode']
            }
        );

        if ($('body').hasClass('language-de')) {
            var circle = new google.maps.Circle({
                center: new google.maps.LatLng(51.0485492,8.2110702),
                radius: 500000
            });
            _this.autocompleteElement.setBounds(circle.getBounds());
        }

        /* create geocoder object */
        _this.geocoder = new google.maps.Geocoder;

        /* event listener for navigator geoposition */
        _this.navigatior.click(function(e) {
            e.preventDefault();
            if (navigator.geolocation) {
                navigatorGeolocationParentObject = _this;
                navigator.geolocation.getCurrentPosition(_this.updatePosition);
            }
        });

        /* do not submit the search form */
        _this.searchForm.submit(function(e){
            e.preventDefault();
        });

        /* do not submit the search form */
        $(_this.autocomplete[0]).keypress(function(e) {
            if (e.keyCode === 13) {
                e.preventDefault();
            }
            $(this).parent().removeClass('error');
        });

        _this.updateUserSelection();

        /* add autocomplete changed event listener */
        google.maps.event.addListener(_this.autocompleteElement, 'place_changed', function() {

            var place = _this.autocompleteElement.getPlace();
            if (!place.geometry) {
                console.log("Autocomplete's returned place contains no geometry");
                return;
            }

            /* hide marker if we use the map */
            if(_this.mapCanvas) {
                _this.marker.setVisible(false);
            }

            var latLng = new google.maps.LatLng(
                place.geometry.location.lat(),
                place.geometry.location.lng()
            );

            _this.updateUserSelection(true);

            /* chech if zip code is present */
            var checkPlace = _this.matchPlace([place]);
            if ($.isEmptyObject(checkPlace)) {
                if(!_this.doReverseGeocoding(latLng)) {
                    _this.updateGeocoder(place, latLng);
                }
            } else {
                _this.updateGeocoder(place, latLng);
            }
        });

        /* workaround to select first autocomplete result on enter */
        google.maps.event.addDomListener(_this.autocomplete[0], 'keydown', function(e) {
            if ($('.pac-container .pac-item-selected').length == 0 && e.keyCode === 13 && !e.triggered) {
                google.maps.event.trigger(this, 'keydown', {
                    keyCode: 40
                });
                google.maps.event.trigger(this, 'keydown', {
                    keyCode: 13,
                    triggered: true
                });
            }
        });

        _this.updateUserSelection();
    },

    /* make the event listeners */
    makeEventListener: function() {
        var _this = this;
        _this.categoryDropdown.change(function(e) {
            _this.cookie.category = $(this).val();
            _this.setCookie('location', _this.cookie);
            _this.triggerUpdate();
            _this.ajaxContactPerson();

            if ($('.szComdbproductTeaser').length && $(this).find('option:selected').data('teaser')) {
                var teaserUid = $(this).find('option:selected').data('teaser')
                $('.szComdbproductTeaser').each(function() {
                    var element = $(this);
                    element.data('szComdbproductTeaser').updateTeaser(teaserUid);
                });
            }

            /* do request to update the powermail receiver */
            if (_this.options.isPowermailReceiver) {
                _this.ajaxPowermailReceiver();
            }
        });
    },

    /* make the special event listeners for list view */
    makeMapListener: function() {

        var _this = this;

        _this.resultsArea.find('a.btn-more').unbind('click');
        _this.resultsArea.find('a.btn-more').click(function(e) {
            e.preventDefault();
            _this.infowindow.close();

            var elem = $(this).parents('.contact-wrapper');
            _this.infowindow.setContent(elem.find('.infowindow-holder').html() + '</p>');
            _this.infowindow.open(_this.mapCanvas, _this.marker);

            var latLng = new google.maps.LatLng(elem.data('latitude'), elem.data('longitude'));
            _this.marker.setPosition(latLng);
            _this.marker.setAnimation(google.maps.Animation.DROP);
            _this.marker.setVisible(true);

            if(_this.markUser && _this.home.getVisible()) {
                _this.bounds = new google.maps.LatLngBounds();
                _this.bounds.extend(_this.home.getPosition());
                _this.bounds.extend(_this.marker.getPosition());
                _this.mapCanvas.fitBounds(_this.bounds);
            } else {
                _this.mapCanvas.panTo(latLng);
                _this.mapCanvas.setZoom(10);
            }

            $('html, body').animate({
                scrollTop: ($('#szCfListMap').offset().top - 84)
            }, 'slow');

            return false;
        })
    },

    /* fill the form data given from cookie values */
    makeForm: function() {
        var _this = this;

        if (!_this.searchForm.length){
            return 0;
        }

        if(_this.searchForm.find('.szCfLat').length && _this.cookie.latitude) {
            _this.searchForm.find('.szCfLat').val(_this.cookie.latitude);
        }
        if(_this.searchForm.find('.szCfLng').length && _this.cookie.longitude) {
            _this.searchForm.find('.szCfLng').val(_this.cookie.longitude);
        }
        if(_this.searchForm.find('.szCfCountry').length && _this.cookie.isocode) {
            _this.searchForm.find('.szCfCountry').val(_this.cookie.isocode);
        }
        if(_this.searchForm.find('.szCfZip').length && _this.cookie.zip) {
            _this.searchForm.find('.szCfZip').val(_this.cookie.zip);
        }
        if(_this.searchForm.find('.szCfContact').length && _this.cookie.contact) {
            _this.searchForm.find('.szCfContact').val(_this.cookie.contact);
        }
        if(_this.searchForm.find('.szCfCategory').length && _this.cookie.category) {
            _this.searchForm.find(".szCfCategory option[value='" + _this.cookie.category + "']").prop('selected', true);
        }
        if(_this.searchForm.find('.szCfAutocomplete').length && _this.cookie.autocomplete) {
            _this.searchForm.find('.szCfAutocomplete').val(_this.cookie.autocomplete);
        }
    },

    /* do reverse geocoding to get full informations about the wanted place */
    doReverseGeocoding: function(latLng) {
        var _this = this;
        _this.geocoder.geocode({'location': latLng}, function(results, status) {
            if (status === google.maps.GeocoderStatus.OK) {
                if (results) {
                    var place = _this.matchPlace(results);

                    if ($.isEmptyObject(place)) {
                        console.log('Geocoder failed, no location found');
                        return 0;
                    }

                    _this.updateGeocoder(place, latLng);

                } else {
                    console.log('Reverse geocoder: no results found');
                }
            } else {
                console.log('Reverse geocoder failed due to: ' + status);
            }
        });
    },

    updateGeocoder: function(place, latLng) {
        var _this = this;



        _this.cookie.latitude = latLng.lat();
        _this.cookie.longitude = latLng.lng();
		_this.cookie.autocomplete = this.autocomplete.val();

        _this.location = _this.matchAddressComponents(place);
        _this.cookie.isocode = _this.location.country.short_name;

        if (!_this.location.zip || !_this.location.city || !_this.location.country.long_name) {
            /* _this.cookie.autocomplete = place.formatted_address; */
        } else {
            _this.cookie.zip = _this.location.zip.short_name;
            _this.cookie.city = _this.location.city.long_name;
            _this.cookie.country = _this.location.country.long_name;
            /* _this.cookie.autocomplete = ''; */
            _this.cookie.street = '';
            _this.cookie.street_number = '';
            if (!$.isEmptyObject(_this.location.street)) {
                _this.cookie.street = _this.location.street.long_name;
                /* _this.cookie.autocomplete = _this.location.street.long_name; */
            }
            if (!$.isEmptyObject(_this.location.street_number)) {
                _this.cookie.street_number = _this.location.street_number.long_name;
                /* _this.cookie.autocomplete += ' ' + _this.location.street_number.long_name; */
            }
            /*
            if (_this.cookie.autocomplete != '') {
                _this.cookie.autocomplete += ', ';
            }
            _this.cookie.autocomplete += _this.location.zip.short_name + ' ' + _this.location.city.long_name + ', ' + _this.location.country.long_name;
            */
        }
        _this.setCookie('location', _this.cookie);

        /* _this.autocomplete.val(_this.cookie.autocomplete); */

        _this.triggerUpdate();

        /* do request to update the powermail receiver */
        if (_this.options.isPowermailReceiver && (!$('.szCfPowermailReceiver').length || _this.categoryDropdown.hasClass('szCfPowermailReceiver'))) {

            _this.ajaxPowermailReceiver();

            /* prefill also possible powermail input fields */
            if (_this.holder.parents('.tx-powermail').length) {
                _this.updateForm();
            }
        }

        if (_this.searchForm) {
            _this.holder.find('.szCfContact').val('');
            _this.holder.find('.szCfLat').val(latLng.lat());
            _this.holder.find('.szCfLng').val(latLng.lng());
            _this.holder.find('.szCfCountry').val(_this.location.country.short_name);

            if(_this.holder.data('search') == 'zip') {
                if (_this.location.zip && _this.location.zip.short_name) {
                    _this.holder.find('.szCfZip').val(_this.location.zip.short_name);
                } else {
                    // $(_this.autocomplete[0]).parent().addClass('error');
                    // console.log('no zip found');
                    // return 0;
                }
            }

            _this.ajaxContactPerson();
        }
    },

    /* match the best place got from reverse geocoder */
    matchPlace: function(results) {
        var place = {};

        $.map(results, function(result) {
            $.map(result.types, function(type) {
                /* add type "route" if some matches fails */
                if (type == 'street_address' || ($.isEmptyObject(place) && type == 'postal_code')) {
                    place = result;
                    return false;
                }
            });
        });

        return place;
    },

    /* match all given address components got from reverse geocoder */
    matchAddressComponents: function(place, storage) {
        var location = {};
        $.map(place.address_components, function(value, index){
            if(value.types[0] == 'postal_code') {
                location.zip = value;
            }
            if(value.types[0] == 'locality') {
                location.city = value;
            }
            if(value.types[0] == 'country') {
                location.country = value;
            }
            if(value.types[0] == 'route') {
                location.street = value;
            }
            if(value.types[0] == 'street_number') {
                location.street_number = value;
            }
        });
        return location;
    },

    /* match page category */
    matchCategory: function() {
        var _this = this;

        if (!_this.categoryDropdown.hasClass('szCfPowermailReceiver')) {
            if($('body').data('cf-category')) {
                $(_this.options.category).val($('body').data('cf-category'));
                _this.cookie.category = $('body').data('cf-category');
                _this.setCookie('location', _this.cookie);
            }
            else if(_this.categoryDropdown && _this.cookie.category) {
                _this.categoryDropdown.val(_this.cookie.category);
            }
        }
    },

    /* trigger the update function on all other elements which are needed */
    triggerUpdate: function() {
        var _this = this;

        $('.szCfTriggerUpdate').each(function() {
            var element = $(this);
            if(element.prop('id') && element.prop('id') != _this.holder.prop('id')) {
                element.data('szContactFinder').doUpdate();
            }
        });
    },

    /* do the update triggered from an other element */
    doUpdate: function() {
        var _this = this;
        _this.cookie = _this.getCookie('location');
        _this.autocomplete.val(_this.cookie.autocomplete);

        if (_this.categoryDropdown) {
            _this.categoryDropdown.val(_this.cookie.category);

            jcf.destroyAll();
            initCustomForms();
        }
        /*_this.makeForm();*/

        if(!_this.options.isGeocheck && this.holder.data('maptype') == 'dynamic') {
            _this.ajaxContactPerson();
        } else if (_this.options.isGeocheck) {
            if (_this.holder.parents('.tx-powermail').length) {
                _this.autocomplete.parsley().validate();
                _this.updateForm();
            } else {
                _this.holder.find('.region-wrapper .form-group').addClass('success');
            }
        }
    },

    /* do ajax request to get the contact person */
    ajaxContactPerson: function(updateHeader) {
        var _this = this;

        /* AJAX call */
        $.ajax({
            url: 'index.php',
            type: 'GET',
            dataType: 'html',
            data: {
                id: $('body').data('pid'),
                no_cache: 1,
                L: $('body').data('languid'),
                type: 1465565243,
                tx_szcontactfinder_flyout: {
                    action: (_this.options.isList ? 'nearby' : 'ajax'),
                    lat: _this.cookie.latitude,
                    lng: _this.cookie.longitude,
                    country: _this.cookie.isocode,
                    zip: _this.cookie.zip,
                    category: _this.cookie.category,
                    storagePid: _this.holder.data('storage'),
                    search: _this.holder.data('search'),
                    sortby: _this.holder.data('sortby')
                }
            },
            success: function(res) {

                var $res = $(res);
                var dataHolder = null;
                var latitude = null;
                var longitude = null;
                if(_this.options.isList) {
                    dataHolder = $res.find('.contact-wrapper:first-child');
                } else {
                    dataHolder = $res.find('.contact-wrapper');
                }

                latitude = dataHolder.data('latitude');
                longitude = dataHolder.data('longitude');

                _this.holder.find('.contact-wrapper').data('latitude', latitude);
                _this.holder.find('.contact-wrapper').data('longitude', longitude);
                _this.holder.find('.contact-wrapper').data('contact', dataHolder.data('contact'));
                _this.holder.find('.contact-wrapper').data('employee', dataHolder.data('employee'));

                _this.holder.find('.contact-wrapper').html($res.find('.contact-wrapper').html());

                if(_this.mapCanvas) {
                    _this.infowindow.close();

                    if(_this.options.isList) {
                        _this.updateMarker(
                            latitude,
                            longitude,
                            $res.find('.contact-wrapper:first-child .infowindow-holder').html()
                        );
                    } else {
                        _this.updateMarker(
                            latitude,
                            longitude,
                            $res.find('.infowindow-holder').html()
                        );
                    }
                }

                if(_this.resultsArea) {
                    if(_this.options.isList) {
                        _this.resultsArea.html($res.html());
                        $(window).trigger('resize');
                        _this.makeMapListener();
                    } else {
                        _this.resultsArea.html($res.find('.contact-wrapper').html());
                    }
                }

                _this.cookie.receiverFlyout = {
                    contact: dataHolder.data('contact'),
                    employee: dataHolder.data('employee'),
                    is_default: dataHolder.data('default-receiver')
                };

                if (dataHolder.data('default-receiver') == 1) {
                    _this.updateContentAddress($res.find('.receiver-wrapper'));
                }

                _this.setCookie('location', _this.cookie);

                if(_this.options.isFlyout) {
                    _this.updateHeader();
                }
            },
            error: function(err) {
                console.log(err);
            }
        });
    },

    /* do ajax request to get the contact person for mail forms */
    ajaxPowermailReceiver: function() {
        var _this = this;

        $.ajax({
            url: 'index.php',
            type: 'GET',
            dataType: 'html',
            data: {
                id: $('body').data('pid'),
                no_cache: 1,
                L: $('body').data('languid'),
                type: 1465565242,
                tx_szcontactfinder_geocheck: {
                    action: 'powermail',
                    lat: _this.cookie.latitude,
                    lng: _this.cookie.longitude,
                    country: _this.cookie.isocode,
                    zip: _this.cookie.zip,
                    category: _this.cookie.category,
                    storagePid: _this.holder.data('storage'),
                    search: _this.holder.data('search'),
                    geolocation: 1
                }
            },
            beforeSend: function() {

            },
            success: function (result) {
                var res = $(result);

                _this.cookie.receiverForm = {
                    contact: res.data('receiver')
                };

                _this.setCookie('location', _this.cookie);
                _this.updateContentAddress(res);
            }
        });
    },

    /* do ajax request to get the current geo data */
    ajaxGeodata: function() {
        var _this = this;

        $.ajax({
            url: 'index.php',
            type: 'GET',
            dataType: 'json',
            data: {
                id: $('body').data('pid'),
                no_cache: 1,
                L: $('body').data('languid'),
                type: 1465565242,
                tx_szcontactfinder_geocheck: {
                    action: 'geoip'
                }
            },
            success: function (result) {
                var cookie = {
                    isocode: result.isocode,
                    latitude: result.lat,
                    longitude: result.lng,
                    autocomplete: null,
                    zip: 0,
                    category: 0,
                    receiverForm: {
                        contact: 0
                    },
                    receiverFlyout: {
                        contact: 0,
                        employee: 0
                    }
                };
                _this.setCookie('location', cookie);

                initContactFinder();
            },
            error: function() {

            }
        });
    },

    /* update position given by navigator */
    updatePosition: function(position, options) {
        var _this = navigatorGeolocationParentObject;
        var latLng = new google.maps.LatLng(
            position.coords.latitude,
            position.coords.longitude
        );

        _this.doReverseGeocoding(latLng);
    },

    /* mark autocomplete as selected (only for geocheck) */
    updateUserSelection: function(setUserSelection) {
        var _this = this;

        if (setUserSelection) {
            _this.cookie.isUserSelected = 1;
            _this.setCookie('location', _this.cookie);

            // fire google tag manager event
            if (typeof dataLayer != 'undefined' && !_this.options.isGeocheck) {
                dataLayer.push({
                    'event': 'formSend',
                    'eventName': 'storeLocator'
                });

                console.log({
					'event': 'formSend',
					'eventName': 'storeLocator'
				});
            }
        }

        if (_this.options.isGeocheck && _this.cookie.isUserSelected) {
            _this.holder.find('.region-wrapper .form-group').addClass('success');
        }
    },

    /* update marker */
    updateMarker: function(lat, lng, content) {
        var _this = this;

        _this.marker.setVisible(false);
        _this.infowindow.close();

        /* update the infowindow content */
        _this.infowindow.setContent(content);
        if (_this.options.openInfowindow) {
            _this.infowindow.open(_this.mapCanvas, _this.marker);
        }

        /* update the marker position */
        var latLng = new google.maps.LatLng(lat, lng);
        _this.marker.setPosition(latLng);
        _this.marker.setAnimation(google.maps.Animation.DROP);
        _this.marker.setVisible(true);
        _this.mapCanvas.panTo(latLng);
        _this.mapCanvas.setZoom(_this.options.markerZoom);

        _this.updateContentContact($(content));
    },

    /* update all content elements with given hotline css selector */
    updateContentContact: function(content) {
        var insertContent = content.find('.phone').text();

        if (insertContent) {
            $('.top-bar .flag.phone span, .w1 span.hotline-wrapper').text(insertContent);
        }

        insertContent = content.find('.email').text();
        if (insertContent) {
            $('.w1 span.email-wrapper').attr('href', 'mailto:' + insertContent).text(insertContent);
        }
    },

    /* update all content elements with given address-wrapper css selector */
    updateContentAddress: function(content) {
        if (content.hasClass('receiver-wrapper')) {
            $('#wrapper .w1').find('address.receiver-wrapper').html(content.html());
        }
    },

    /* update all content elements with given hotline css selectoe */
    updateHeader: function() {

        if(this.holder.data('search').length > 0) {
            var headerData = '';

            if (this.holder.find('.col:nth-child(2) .tel a').length > 0) {
                headerData = this.holder.find('.col:nth-child(2) .tel a').text();
            } else {
                headerData = this.holder.find('.col:nth-child(1) .tel a').text();
            }

            if (headerData != "") {
                $('.top-nav .flag.phone span, .w1 span.hotline-wrapper').text(headerData);
            }
        }
    },

    /* update powermail form */
    updateForm: function() {
        var _this = this;
        var form = _this.holder.parents('.tx-powermail');

        /*
        if (_this.cookie.street) {
            form.find('input[name="tx_powermail_pi1[field][strae]"]').val(_this.cookie.street);
        }
        if (_this.cookie.street_number) {
            form.find('input[name="tx_powermail_pi1[field][nr]"]').val(_this.cookie.street_number);
        }
        */

        if (_this.cookie.zip) {
            form.find('input[name="tx_powermail_pi1[field][plz]"]').val(_this.cookie.zip);
        }
        if (_this.cookie.city) {
            form.find('input[name="tx_powermail_pi1[field][ort]"]').val(_this.cookie.city);
        }
        if (_this.cookie.country) {
            form.find('input[name="tx_powermail_pi1[field][land]"]').val(_this.cookie.country);
        }
    },

    /* update cookie values */
    updateCookie: function() {
        if(this.searchform.find('.szCfLat').val()) {
            _this.cookie.latitude = this.searchform.find('.szCfLat').val();
        }
        if(this.searchform.find('.szCfLng').val()) {
            _this.cookie.longitude = this.searchform.find('.szCfLng').val();
        }
        if(this.searchform.find('.szCfCountry').val()) {
            _this.cookie.isocode = this.searchform.find('.szCfCountry').val();
        }
        if(this.searchform.find('.szCfZip').val()) {
            _this.cookie.zip = this.searchform.find('.szCfZip').val();
        }
        if(this.searchform.find('.szCfContact').val()) {
            _this.cookie.contact = this.searchform.find('.szCfContact').val();
        }
        if(this.searchform.find('.szCfCategory').val()) {
            _this.cookie.category = this.searchform.find('.szCfCategory').val();
        }
        if(this.searchform.find('.szCfAutocomplete').val()) {
            _this.cookie.autocomplete = this.searchform.find('.szCfAutocomplete').val();
        }
        _this.setCookie('location', _this.cookie);
    },

    /* get the cookie values */
    getCookie: function(name) {
        $.cookie.json = true;
        return $.cookie(name);
    },

    /* set the cookie values */
    setCookie: function(name, value) {
        $.cookie.json = true;
        $.cookie(name, value, {path: '/'});
    }
};

/* init */
$(document).ready(function() {
    var szContactFinderGeocheck = new szContactFinder({
        initGeodata: true
    });
});