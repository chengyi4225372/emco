(function ($) {

	var $szComdbproductsPowermail = {
		init: function() {
			_this = this;

			$('.powermail_form fieldset:first').append('<div class="comdbproducts-loader"><div class="image-wrapper"><img src="/typo3conf/ext/sz_comdbproducts/Resources/Public/Icons/loader.gif" /></div></div>');
			var variant_uid = $('.powermail_form .szcomdbproducts[data-szcomdbproducts-type="3"]').data('szcomdbproducts-init');

            if(variant_uid) {
				this.ajaxRequestForVariant(variant_uid);
			} else {
				this.ajaxRequest();
				this.initListener();
			}
		},

		initListener: function() {

            $('.powermail_form .szcomdbproducts-request-wrapper').parent('.powermail_fieldwrap').prev('.form-group').find('select').change(function() {
                $('.powermail_form .szcomdbproducts-request-wrapper')
                    .find('.active')
                    .removeClass('active')
                    .hide();
                $('.powermail_form .szcomdbproducts-request-wrapper')
                    .find('.image-wrapper[data-id="' + $(this)
                        .find('option:selected').prop('index') + '"]')
                    .addClass('active')
                    .show();
            });

            $('.powermail_form select.szcomdbproducts').change(function() {

                var element = $(this);
                var doRequest = true;
                $.each(element.parents('.form-group').prevAll('.form-group'), function() {
                    if($(this).find('select[data-szcomdbproducts-type="3"]').length > 0) {
                        doRequest = false;
                        return 0;
                    }
                });

                if(!doRequest) {
                    return 0;
                }

                $('.powermail_form .checkbox-holder').html('').parents('.szcomdbproducts').hide();

				if(element.val()) {
                    element.parents('.form-group').removeClass('error');
				}

				var selectList = element.parents('.form-group').nextAll('.form-group');
				$.each(selectList, function() {
					var select = $(this).find('select.szcomdbproducts');
					select.find('option:not(:first-child)').remove();
					select.val('');
				});

				jcf.destroyAll();
				initCustomForms();

				_this.ajaxRequest();
			});
		},

        processRequestAttributes: function(variant_uid) {
            var attributes = Array();
            $('.powermail_form .szcomdbproducts').each(function() {
                var elem = $(this);
                attributes.push({
                    type: elem.data('szcomdbproducts-type'),
                    name: elem.data('szcomdbproducts-name'),
                    uid: elem.data('szcomdbproducts-uid'),
                    value: (typeof variant_uid !== 'undefined' ? (elem.data('szcomdbproducts-type') == 3 ? variant_uid : elem.data('uid')) : elem.find('option:selected').data('uid'))
                });
            });

            return attributes;
        },

		ajaxRequestForVariant: function(variant_uid) {
			var _this = this;

            $.ajax({
				url: 'index.php',
				type: 'GET',
				dataType: 'json',
				data: {
                    id: $('body').data('pid'),
                    L: $('body').data('languid'),
                    type: 1444646288,
                    no_cache: 1,
                    tx_szcomdbproducts_powermail: {
                        action: 'init',
                        attribute: _this.processRequestAttributes(variant_uid)
                    }
				},

				beforeSend: function() {
					$('.powermail_form .comdbproducts-loader').fadeIn();
				},

				success: function (result) {
                    $.each(result.options, function(index, select) {
                        if(index == 4) {
                            _this.processResultInformations(index, select);
                        }
                        else {
                            if (select.values) {
                                $.each(select.values, function (i, item) {
                                    $('.powermail_form select[data-szcomdbproducts-name="' + select.name + '"]').append($('<option>', {
                                        value: item.text,
                                        text: item.text,
                                        'data-uid': item.value
                                    }));
                                });
                            }
                        }
                    });

					$.each(result.selected, function(index, select) {
						$('.powermail_form select[data-szcomdbproducts-name="' + select.name + '"]').find('option').each(function(){
							if($(this).data('uid') ==  select.value) {
								$(this).attr('selected', 'selected');
								return 0;
							}
						});
					});

					jcf.destroyAll();
					initCustomForms();

					$('.powermail_form .comdbproducts-loader').fadeOut();

					_this.initListener();
				}
			});
		},

		ajaxRequest: function() {
			var _this = this;

			$.ajax({
                url: 'index.php',
				type: 'GET',
				dataType: 'json',
                data: {
                    id: $('body').data('pid'),
                    L: $('body').data('languid'),
                    type: 1444646288,
                    no_cache: 1,
                    tx_szcomdbproducts_powermail: {
                        action: 'result',
                        attribute: _this.processRequestAttributes()
                    }
                },
				beforeSend: function() {
					$('.powermail_form .comdbproducts-loader').fadeIn();
				},
				success: function (result) {
                    $('.powermail_form .checkbox-wrapper').html('');

                    $.each(result.options, function(index, select) {
                        if(index == 4) {
                            _this.processResultInformations(index, select);
                        }
                        else {
                            if(select.values) {
                                $('.powermail_form select[data-szcomdbproducts-name="' + select.name + '"] option:not(:first)').remove();
                                $.each(select.values, function (i, item) {
                                    $('.powermail_form select[data-szcomdbproducts-name="' + select.name + '"]').append($('<option>', {
                                        value: item.text,
                                        text: item.text,
                                        'data-uid': item.value
                                    }));
                                });
                            }
                        }
					});

                    jcf.destroyAll();
                    initCustomForms();

					$('.powermail_form .comdbproducts-loader').fadeOut();
				}
			});
		},

        processResultInformations: function(index, select) {
            if(select.values) {
                var holder = $('.powermail_form .checkbox-wrapper');
                holder.html('');

                var dummy = $('.powermail_form .checkbox-dummy').clone();
                var dummyName = dummy.find('input').attr('name');

                $.each(select.values, function (i, item) {
                    if (item.link) {
                        dummy.find('label').attr('for', 'dummy_' + i).html('<input type="checkbox" name="' + dummyName + '[]" value="' + item.text + '" id="dummy_' + i + '" /><a href="' + item.link + '" target="_blank">' + item.text + '</a>');
                    } else {
                        dummy.find('label').attr('for', 'dummy_' + i).html('<input type="checkbox" name="' + dummyName + '[]" value="' + item.text + '" id="dummy_' + i + '" />' + item.text);
                    }
                    holder.append(dummy.html());
                });

                holder.parents('.szcomdbproducts').show();
            }
        }
	};

	var $szComdbproducts = {
		page: 0,
		isLoading: true,
		limitQuery: 1,
		pluginName: null,
		controllerName: null,
		typeNum: null,
        multipleFacet: false,
        stepByStep: false,
		xhr: null,

		initDetail: function () {
			_this = this;
			var dataHolder = $('section.product-area');
			var cookieProducts = _this.getCookie('products');

			if(cookieProducts) {
				if(!cookieProducts.slider) {
					cookieProducts.slider = {};
					cookieProducts.slider[dataHolder.data('variant')] = {variant: dataHolder.data('variant'), product: dataHolder.data('product')};
				}
				else {
					cookieProducts.slider[dataHolder.data('variant')] = {variant: dataHolder.data('variant'), product: dataHolder.data('product')};
				}
			}
			else {
				cookieProducts = { slider: {} };
				cookieProducts.slider[dataHolder.data('variant')] = {variant: dataHolder.data('variant'), product: dataHolder.data('product')};

			}
			_this.setCookie('products', cookieProducts);

			$('.btn-shopby').click(function(e) {
				e.preventDefault();
				$('html, body').animate({ scrollTop: ($('#shopby').offset().top-100)}, 'slow');
			});

			if ($('#teaserProductRequest').length) {
				window.setTimeout(function() {
					$('#teaserProductRequest').fadeIn(function() {
						$('#teaserProductRequest .closer').click(function(e) {
							e.preventDefault();
							$('#teaserProductRequest').fadeOut();
						});
					})
				}, 4000);
			}

			/* Enable google tag manager tracking */
			if ($('.tx-sz-comdbproducts').data('gtm') == 1) {
				_this.gtmProductDetail(dataHolder);

				$('.gtmAddToCard').bind('click', function (e) {
					_this.gtmAddToCard(dataHolder);
				});
			}
		},

		initProducts: function() {
			this.pluginName = 'Product';
			this.controllerName = 'Product';
			this.typeNum = 1444646280;
            this.initProductTeaser();
			this.initFacet();
            this.initInfinitescroll();
        },

        initReferences: function() {
            this.pluginName = 'Reference';
            this.controllerName = 'Reference';
            this.typeNum = 1444646284;
            this.initFacet();
            this.initInfinitescroll();
        },

		initCommerceConnector: function() {
			var _this = this;

			$('.facet-form select').change(function(e){
				$('.facet-form').submit();
			});

			/* Enable google tag manager tracking */
			if ($('.tx-sz-comdbproducts').data('gtm') == 1) {
				$('.gtmPurchase').bind('click', function(e) {
					_this.gtmPurchase($(this).closest('.listenseite-post-results'));
				});
			}
		},

        initProductLinks: function() {
            var _this = this;

            $('a.product-link').click(function(e){

                e.preventDefault();
                var data = $(this).data('params');

                var cookieProducts = _this.getCookie('products');
                if(cookieProducts) {
                    cookieProducts.preselect = data;
                }
                else {
                    cookieProducts = {
                        preselect: data
                    };
                }

                _this.setCookie('products', cookieProducts);

                if ($(this).has('[target="_blank"]')) {
                    var newWindow = window.open($(this).attr('href'), '_blank');
                    newWindow.focus();
                } else {
                    window.location.href = $(this).attr('href');
                }

            });
        },

        initProductTeaser: function() {

        },

		initFacet: function() {
			_this = this;
			var dataHolder = $('.comdbproducts-holder');
			var cookieProducts = _this.getCookie('products');
            var doInitiailProductLoad = true;
            var facetSelection = false;

            if(dataHolder.data('facet-multiple')) {
                _this.multipleFacet = true;
            }
            if(dataHolder.data('facet-stepbystep')) {
                _this.stepByStep = true;
            }

            if(cookieProducts) {
                cookieProducts.teaser = dataHolder.data('teaser');
            }
            else {
                cookieProducts = {
                    teaser: dataHolder.data('teaser')
                };
            }

			_this.setCookie('products', cookieProducts);

			$.ajax({
				url: 'index.php',
				type: 'GET',
				dataType: 'json',
				data: {
                    id: $('body').data('pid'),
                    L: $('body').data('languid'),
                    no_cache: 1,
                    type: 1444646290,
                    tx_szcomdbproducts_product: {
                        action: 'init',
                        sys_language_uid: dataHolder.data('language'),
                        category: dataHolder.data('category'),
                        facet: $('.facet-form').serializeArray()
                    }
                },
				success: function (result) {
                    var cookieProducts = _this.getCookie('products');
                    _this.updateFacet(result.facets, true);

                    if (_this.stepByStep) {
                        var facets = $('.facet-form').find('select:first').parents('.facet-holder').nextAll('.facet-holder');
                        facets.each(function() {
                            var select = $(this).find('select');
                            select.val(select.find('option:enabled').eq(0).val());
                            select.attr('disabled', 'disabled');
                        });
                    }

                    /* ist deeplink, one or more dropdown boxes should be selected */
					if(dataHolder.data('facet-name') && dataHolder.data('facet-value')) {

                        $('.facet-form').find('select[name="' + dataHolder.data('facet-name') + '"]').val(dataHolder.data('facet-value'));
                        if (cookieProducts && cookieProducts.preselect) {
                            _this.preselectFacet(cookieProducts);
                            /* reload cached results because of the cookie data */
                            doInitiailProductLoad = true;
                        } else {
                            /* use cached results */
                            doInitiailProductLoad = false;
                        }
					}
                    /* no deeplink, use cookie to preselect the last choosen values */
					else {
                        if (cookieProducts && cookieProducts.preselect) {
                            _this.preselectFacet(cookieProducts);
                        } else {
                            var firstFacet = $('.facet-form').find('select:first');
                            if(_this.multipleFacet) {
                                //firstFacet.find('option:first').attr('disabled', 'disabled');
                            }
                            if (cookieProducts && cookieProducts.facet && cookieProducts.facet[dataHolder.data('category')]) {
                                doInitiailProductLoad = false;
                                $.each(cookieProducts.facet[dataHolder.data('category')], function () {
                                    if (this.value) {
                                        $('.facet-form').find('select[name="' + this.name + '"]').find('option[value="' + this.value + '"]').prop('selected', true);

                                        if (_this.stepByStep) {
                                            $('.facet-form').find('select[name="' + this.name + '"]').parents('.facet-holder').next('.facet-holder').find('select').removeAttr('disabled');
                                        }

                                        doInitiailProductLoad = true;
                                    }
                                });
                            }
                            else {
                                if (!firstFacet.prop('multiple')) {
                                    firstFacet.val(firstFacet.find('option:enabled').eq(0).val());
                                    /* no cookie data - no reload */
                                    doInitiailProductLoad = false;
                                }
                            }

                            if (!firstFacet.val() && !firstFacet.prop('multiple')) {
                                firstFacet.val(firstFacet.find('option:enabled').eq(0).val());
                            }

                            if(_this.multipleFacet && !firstFacet.val()) {
                                $('.facet-form').find('select:not(:first)').each(function() {
                                    var element = $(this);
                                    element.attr('disabled', 'disabled');
                                    element.parents('.facet-holder').hide();
                                });
                            }
                        }
					}

					$.ajax({
						url: 'index.php',
						type: 'GET',
						dataType: 'json',
                        data: {
                            id: $('body').data('pid'),
                            L: $('body').data('languid'),
                            no_cache: 1,
                            type: 1444646290,
                            tx_szcomdbproducts_product: {
                                action: 'init',
                                sys_language_uid: dataHolder.data('language'),
                                category: dataHolder.data('category'),
                                facet: $('.facet-form').serializeArray(),
                                linkData: _this.getLinkRequest()
                            }
                        },
						success: function (result) {

                            _this.updateFacet(result.facets, false);

                            _this.updateNumFound(result.numFound);

                            if (doInitiailProductLoad) {
                                _this.destroyInfinitescroll();

                                $('.comdbproducts-holder .listenseite-post-results').removeClass('listenseite-post-results').addClass('listenseite-post-remove').slideUp(function() {
                                    $('.comdbproducts-holder .listenseite-post-remove').remove();
                                });

                                if(_this.controllerName == 'Product') {
                                    _this.getProducts(result.link);
                                } else {
                                    _this.getReferences(result.link);
                                }

                            } else {
                                if($('.categories-holder').hasClass('init')) {
                                    $('.comdbproducts-loader').slideUp();
                                    $('.categories-holder').removeClass('init').slideDown();
                                    initSameHeight();
                                }

								/* Enable google tag manager tracking */
								if ($('.tx-sz-comdbproducts').data('gtm') == 1) {
									var $products = $('.comdbproducts-holder .gtm');
									_this.gtmImpressions(
										$products,
										0
									);
									$products.removeClass('gtm');
								}
                            }

							jcf.refreshAll();
						}
					});
				},
				complete: function() {
					_this.initListener();
				}
			});
		},

        initListener: function() {
            var _this = this;

			$('.facet-form select').change(function(e){

                _this.destroyInfinitescroll();

                _this.updateMultipleSelectHiddenField($(this));
                $('.facet-form').find('select').removeAttr('disabled');

                if ($(this).attr('multiple') == 'multiple' && $(this).find('option:first').prop('selected')) {
                	$(this).find('option:selected').prop('selected', false);
                	$('body > .jcf-select-drop').hide();
					jcf.refreshAll();
				}

                if (_this.stepByStep) {
                    var facets = $(this).parents('.facet-holder').nextAll('.facet-holder');
                    facets.each(function() {
                        var select = $(this).find('select');
                        select.val(select.find('option:enabled').eq(0).val());
                        select.attr('disabled', 'disabled');
                    });

                    if ($(this).val() > 0) {
                        $(this).parents('.facet-holder').next('.facet-holder').find('select').removeAttr('disabled');
                    }
                }

                if(_this.multipleFacet) {
                    if (!$('.facet-form').find('select:first').val()) {
                        $('.facet-form').find('select:not(:first)').each(function() {
                            var element = $(this);
                            element.attr('disabled', 'disabled');
                            element.parents('.facet-holder').hide();
                        });
                    } else if ($(this).hasClass('isFirst')) {
                        var facets = $('.facet-form').find('select:first').parents('.facet-holder').nextAll('.facet-holder');
                        facets.each(function() {
                            var select = $(this).find('select');
                            select.val(select.find('option:enabled').eq(0).val());
                        });
                    }
                }

				/*
                var facets = $(this).parents('.facet-holder').nextAll('.facet-holder');
				facets.each(function() {
					var select = $(this).find('select');
                    select.removeAttr('disabled');
                    select.find('option[selected="selected"]').each(
                        function() {
                            $(this).removeAttr('selected');
                        }
                    );
                    select.find('option:first').attr('selected','selected');
				});
				*/

				_this.page = 0;
				_this.isLoading = true;
                var elem = $(this);

				var dataHolder = $('.comdbproducts-holder');

                if(_this.xhr && _this.xhr.readystate != 4) {
                    _this.xhr.abort();
                }

                _this.xhr = $.ajax({
					url: 'index.php',
					type: 'GET',
					dataType: 'json',
                    data: {
                        id: $('body').data('pid'),
                        L: $('body').data('languid'),
                        no_cache: 1,
                        type: 1444646290,
                        tx_szcomdbproducts_product: {
                            action: 'result',
                            sys_language_uid: dataHolder.data('language'),
                            category: dataHolder.data('category'),
                            facet: $('.facet-form').serializeArray(),
                            linkData: _this.getLinkRequest()
                        }
                    },
					beforeSend: function() {
						var cookieProducts = _this.getCookie('products');
						if(cookieProducts && cookieProducts.facet) {
							cookieProducts.facet[dataHolder.data('category')] = $('.facet-form').serializeArray();
						}
						else {
							cookieProducts = {
								facet: Array()
							};
							cookieProducts.facet[dataHolder.data('category')] = $('.facet-form').serializeArray();
						}

                        if(cookieProducts && cookieProducts.preselect) {
                            delete cookieProducts.preselect;
                        }
						_this.setCookie('products', cookieProducts);

                        /*
						$('.categories-holder').after($('.comdbproducts-downloader'));
						$('.categories-holder').after($('.comdbproducts-loader'));
						*/
						$('.comdbproducts-loader').slideDown();

                        $('.comdbproducts-holder .listenseite-post-results').removeClass('listenseite-post-results').addClass('listenseite-post-remove').slideUp(function() {
                            $('.comdbproducts-holder .listenseite-post-remove').remove();
                        });
					},
					success: function (result) {

                        _this.destroyInfinitescroll();

                        _this.updateFacet(result.facets, false);

                        _this.updateNumFound(result.numFound);

                        if(_this.controllerName == 'Product') {
							_this.getProducts(result.link);
						} else {
							_this.getReferences(result.link);
						}
                        if(!elem.prop('multiple')) {
                            jcf.refreshAll();
                        }
					}
				});
			});

            $('.facet-form .facet-reset').click(function(e) {
                e.preventDefault();

                $('.facet-form').find('input.remove-hidden').remove();

                var facets = $('.facet-form').find('.facet-holder');
                facets.each(function() {
                    var select = $(this).find('select');
                    select.removeAttr('disabled');
                    select.find('option[selected="selected"]').each(
                        function() {
                            $(this).removeAttr('selected');
                        }
                    );
                    if (select.prop('multiple')) {
                        select.val('');
                        select.prev('input[type="hidden"]').removeAttr('disabled');
                    } else {
                        select.find('option:first').attr('selected','selected');
                    }
                });

                jcf.refreshAll();

                if(_this.multipleFacet) {
                    var firstFacet = $('.facet-form').find('select:first');
                    firstFacet.val(firstFacet.find('option:enabled').eq(0).val());
                }

                $('.facet-form select:first').trigger('change');

                return false;
            });
		},

		getProducts: function(link) {
            var _this = this;
			var dataHolder = $('.comdbproducts-holder');

            if(_this.xhr && _this.xhr.readystate != 4) {
                _this.xhr.abort();
            }

            _this.xhr = $.ajax({
				/*url: link.replace('index.php?id=2&', 'index.html?type=' + _this.typeNum + '&'),*/
                url: link,
				type: 'GET',
				dataType: 'html',
                data: {
                  type: _this.typeNum
                },
				success: function (result) {

                    $('.comdbproducts-holder').append(result);

                    _this.updatePagination();

                    if($('.categories-holder').hasClass('init')) {
                        $('.categories-holder').removeClass('init').slideDown();
                        initSameHeight();
                    }
                    $('.comdbproducts-loader').slideUp();

                    $('.comdbproducts-holder .listenseite-post-results').slideDown(function(){
                        initFixedScrollBlock();
                    });

                    if($(result).not('.no-results').length) {
                        _this.isLoading = false;
                        window.setTimeout(function() {
                            _this.initInfinitescroll();
                        }, 1000);

						/* Enable google tag manager tracking */
						if ($('.tx-sz-comdbproducts').data('gtm') == 1) {
							_this.gtmImpressions(
								$('.comdbproducts-holder .gtm'),
								$('.comdbproducts-holder .listenseite-post:not(.comdbproducts-loader)').length - $('.comdbproducts-holder .gtm').length
							);
							$('.comdbproducts-holder .listenseite-post').removeClass('gtm');
						}
                    }
				}
			});

		},

        gtmImpressions: function($results, offset) {

			var _this = this,
				gtmCategory = $('.comdbproducts-holder').data('gtm-category'),
				elements = [];

			$results.each(function(index, element) {
				var $element = $(element)
					gtmIndex = offset + index + 1;

				$element.attr('data-gtm-index', gtmIndex);
				elements.push(_this.getGtmListInformation($element, gtmCategory, gtmIndex));
			});
			gtm.eCommerceImpression(elements);

			_this.gtmProductDetailClick();
		},

		gtmProductDetailClick: function() {
			var _this = this;
			$('.gtmProductDetail').unbind('click');
			$('.gtmProductDetail').bind('click', function(e) {
				var gtmCategory = $('.comdbproducts-holder').data('gtm-category'),
					$element = $(this).closest('.listenseite-post');

				gtm.eCommerceProductClick(
					_this.getGtmElementInformation(
						$element,
						gtmCategory,
						$element.data('gtm-index')
					),
					gtmCategory
				);
			});
		},

		gtmProductDetail: function($element) {
			var _this = this;

			gtm.eCommerceProductDetail(
				_this.getGtmElementInformation(
					$element,
					$element.data('gtm-category')
				)
			);
		},

		gtmAddToCard: function($element) {
			var _this = this;

			gtm.eCommerceAddToCart(
				_this.getGtmElementInformation(
					$element,
					$element.data('gtm-category')
				),
				$element.data('gtm-category')
			);
		},

		gtmPurchase: function($element) {
			var _this = this;

			gtm.eCommercePurchase(
				{
					'id': $element.data('gtm-shop'),
					'affiliation': $element.data('gtm-affiliation')
				},
				_this.getGtmElementInformation(
					$element,
					$element.data('gtm-category')
				)
			);
		},

		getGtmListInformation: function($element, gtmCategory, gtmIndex) {
			var object = {
				'name': $element.data('gtm-name'),
				'id': $element.data('gtm-ean').toString(),
				'category': gtmCategory,
				'variant': $element.data('gtm-variant'),
				'list': gtmCategory,
				'position': gtmIndex
			};

			return object;
		},

        getGtmElementInformation: function($element, gtmCategory, gtmIndex) {
			var object = {
				'name': $element.data('gtm-name'),
				'id': $element.data('gtm-ean').toString(),
				'category': gtmCategory,
				'variant': $element.data('gtm-variant')
			};
			if (gtmIndex)
				object.position = gtmIndex;

			return object;
		},

        getReferences: function(link) {
            var _this = this;
            var dataHolder = $('.comdbproducts-holder');

            if(_this.xhr && _this.xhr.readystate != 4) {
                _this.xhr.abort();
            }

            _this.xhr = $.ajax({
                /*url: link.replace('index.php?id=2&', 'index.html?'),*/
                url: link,
                type: 'GET',
                dataType: 'html',
                data: {
                    type: _this.typeNum
                },
                success: function (result) {

                    $('.comdbproducts-holder').append(result);

                    _this.updatePagination();

                    if($('.categories-holder').hasClass('init')) {
                        $('.categories-holder').removeClass('init').slideDown();
                        initSameHeight();
                    }
                    $('.comdbproducts-loader').slideUp();
                    $('.comdbproducts-holder .listenseite-post-results').slideDown(function(){
                        initFixedScrollBlock();
                    });

                    if($(result).not('.no-results').length) {
                        _this.isLoading = false;
                        window.setTimeout(function() {
                            _this.initInfinitescroll();
                        }, 1000);
                    }
                }
            });

        },

        getLinkRequest: function() {
            var dataHolder = $('.comdbproducts-holder');

            switch(this.pluginName) {
                case 'Reference':
                    return  {
                        id: dataHolder.data('listpid'),
                        L: dataHolder.data('language'),
                        prefix: 'tx_szcomdbproducts_reference',
                        tx_szcomdbproducts_reference: {
                            pluginName: _this.pluginName,
                            controller: _this.controllerName,
                            action: 'result',
                            settings: {
                                detailPid: dataHolder.data('detailpid'),
                                category: dataHolder.data('category'),
                                list: {
                                    attribute: dataHolder.data('attribute'),
                                    trusticon: dataHolder.data('trusticon'),
                                    pictogram: dataHolder.data('pictogram')
                                }
                            }
                        }
                    };
                    break;
                case 'Product':
                    return {
                        id: dataHolder.data('listpid'),
                        L: dataHolder.data('language'),
                        prefix: 'tx_szcomdbproducts_product',
                        tx_szcomdbproducts_product: {
                            pluginName: _this.pluginName,
                            controller: _this.controllerName,
                            action: 'result',
                            settings: {
                                detailPid: dataHolder.data('detailpid'),
                                category: dataHolder.data('category'),
                                list: {
                                    attribute: dataHolder.data('attribute'),
                                    trusticon: dataHolder.data('trusticon'),
                                    pictogram: dataHolder.data('pictogram')
                                }
                            }
                        }
                    };
                    break;
            }
        },

        preselectFacet: function(cookieProducts) {
            $.each(cookieProducts.preselect, function () {
                if (this.value) {
                    if ($('.facet-form').find('select[name="' + this.name + '"]').length > 0) {
                        $('.facet-form').find('select[name="' + this.name + '"]').find('option[value="' + this.value + '"]').prop('selected', true);

                        if (_this.stepByStep) {
                            $('.facet-form').find('select[name="' + this.name + '"]').parents('.facet-holder').next('.facet-holder').find('select').removeAttr('disabled');
                        }

                    } else {
                        $('.facet-form').prepend($('<input/>', {
                            type: 'hidden',
                            name: this.name,
                            value: this.value,
                            class: 'remove-hidden'
                        }));
                    }
                }
            });
        },

        updatePagination: function() {
            var pagebrowser = $('.comdbproducts-holder > .pagination-wrapper');
            if (pagebrowser.find('.pagination-holder').length) {
                $('.tx-sz-comdbproducts > .pagination-wrapper .pagination-holder').html(pagebrowser.find('.pagination-holder').html());
                pagebrowser.remove();
            } else {
                $('.tx-sz-comdbproducts > .pagination-wrapper .pagination-holder').html('');
            }
        },

        updateNumFound: function(numFound) {
            $('.facet-form').find('.numFound').parent('strong').addClass('pulse animated');
            window.setTimeout(
                function() {
                    $('.facet-form').find('.numFound').parent('strong').removeClass('pulse animated');
                }, 1000
            );
            $('.facet-form').find('.numFound').html(numFound);
        },

        updateFacet: function(facets, init) {
            var _this = this;

            if (!init && $('.facet-form').find('select').length == 1) {
                return 0;
            }

            $.each(facets, function(index, facet) {

                var facet = this;
                var element = $('.facet-form').find('select[name="' + index.substring(0, index.indexOf('_facet')) + '"]');
                if (facet.length) {
                    _this.updateMultipleSelectHiddenField($('.facet-form').find('select[name="' + index.substring(0, index.indexOf('_facet')) + '"]'));
                    element.removeAttr('disabled');
                    element.parents('.facet-holder').fadeIn();

                    if (_this.multipleFacet) {
                        element.parents('.facet-holder').show();
                    }

                    _this.updateFacetValues(facet, index, init);
                } else {
                    if (!_this.stepByStep) {
                        element.prev('input[type="hidden"]').attr('disabled', 'disabled');
                        element.attr('disabled', 'disabled');
                        element.parents('.facet-holder').fadeOut();
                        if (_this.multipleFacet) {
                            element.parents('.facet-holder').hide();
                        }
                    }
                }
            });
        },

        updateFacetValues: function(facet, index, init) {

            var _this = this;
            var element = $('.facet-form').find('select[name="' + index.substring(0, index.indexOf('_facet')) + '"]');

            optionValues = Array();
            for(i=0;i<facet.length;i++) {
                optionValues[facet[i]] = facet[++i];
            }

            if(init || !((_this.multipleFacet || _this.stepByStep) && element.hasClass('isFirst'))) {
                element.find('option').each(function(){
                    var elem = $(this);
                    if(elem.val().length) {
                        if(optionValues[elem.val()]) {
                            elem.html(elem.data('value'));
                            elem.removeAttr('disabled');
                        }
                        else {
                            elem.attr('disabled', 'disabled');
                        }
                    }
                });
            }
        },

        updateMultipleSelectHiddenField: function(element) {
            if (element.prop('multiple')) {
                if (element.val()) {
                    element.prev('input[type="hidden"]').attr('disabled', 'disabled');
                } else {
                    element.prev('input[type="hidden"]').removeAttr('disabled');
                }
            }
        },

        initInfinitescroll: function() {

            var cfHeight = $('.szCfFlyout').outerHeight();
            var footerHeight = $('#footer').outerHeight();
            var reloadHeight = cfHeight + footerHeight;

            $('.comdbproducts-holder').infinitescroll({
                loading: {
                    img: '',
                    finishedMsg: '',
                    msgText: '<div class="listenseite-post comdbproducts-loader">' + $('.comdbproducts-loader').html() + '</div>'
                },
                nextSelector: '.pagination-holder li:nth-child(2) a',
                navSelector: '.pagination-holder',
                itemSelector: '.listenseite-post-results',
                pixelsFromNavToBottom: reloadHeight,
                path: function(currentPageNumber) {
                    return $('.pagination-holder li.page-' + currentPageNumber + ' a').attr('href');
                }
            }, function() {
                $('#wrapper').data('FixedScrollBlock').refresh();

				/* Enable google tag manager tracking */
				if ($('.tx-sz-comdbproducts').data('gtm') == 1) {
					_this.gtmImpressions(
						$('.comdbproducts-holder .gtm'),
						$('.comdbproducts-holder .listenseite-post:not(.comdbproducts-loader)').length - $('.comdbproducts-holder .gtm').length
					);
					$('.comdbproducts-holder .listenseite-post').removeClass('gtm');
				}
            });
        },

        destroyInfinitescroll: function() {
            $('.comdbproducts-holder').infinitescroll('destroy');
            $('.comdbproducts-holder').data('infinitescroll', null);
            $('.comdbproducts-holder').infinitescroll('binding','unbind');
        },

        getCookie: function(cname) {
			$.cookie.json = true;
			return $.cookie(cname);
		},

		setCookie: function(cname, cvalue, exdays) {
			$.cookie.json = true;
			$.cookie(cname, cvalue, {path: '/'});
		}
	};

    var $szComdbComparison = {
        dataHolder: null,
        comparisonHolder: null,
        form: null,
        loader: null,
        xhr: null,
        init: function() {
            _this = this;
            _this.dataHolder = $('.comdbcomparison-holder');
            _this.comparisonHolder = _this.dataHolder.find('.listenseite-post-results.active');
            _this.form = $('.facet-form');
            _this.loader = $('.comparison-view .comdbproducts-loader');

            if(_this.xhr && _this.xhr.readystate != 4) {
                _this.xhr.abort();
            }

            _this.xhr = $.ajax({
                url: 'index.php',
                type: 'GET',
                dataType: 'json',
                data: {
                    id: $('body').data('pid'),
                    L: $('body').data('languid'),
                    type: 1444646286,
                    tx_szcomdbproducts_comparison: {
                        action: 'facet',
                        sys_language_uid: _this.dataHolder.data('language'),
                        category: _this.form.find('.group-selector').val()
                    }
                },

                beforeSend: function() {
                    _this.loader.fadeIn();
                },

                success: function (result) {
                    if(result.docs) {
                        _this.processSelectValues(result.docs);
                    }
                },
                complete: function() {
                    _this.loader.fadeOut();
                    _this.initListener();
                }
            });

            _this.dataHolder.find('.row-closer .icon-close').click(function(e) {
				e.preventDefault();
				var _self = this,
					column = $(this).data('column');
				$('.listenseite-post-results.active').find('.row').each(function() {
					$(this).find('.column-' + column).html('');
				});

				$(".variant-selector[data-column='" + column + "']").find('option:selected').removeAttr('selected');
				$(".variant-selector[data-column='" + column + "']").find('option:first').attr('selected','selected');
				$(_self).hide();

				jcf.destroyAll();
				initCustomForms();

				var counter = parseInt(_this.dataHolder.find('.listenseite-post-results.active').attr('data-counter'));
				_this.dataHolder.find('.listenseite-post-results.active').attr('data-counter', --counter);
				if (counter < 2) {
					_this.dataHolder.find('.row-closer .btn').hide();
				}
            });

            _this.dataHolder.find('.row-closer .icon-close').hide();
            _this.dataHolder.find('.row-closer').removeAttr('style');
        },

        initListener: function() {
            var _this = this;

            $('.facet-form select.group-selector').change(function(e) {

                _this.dataHolder.find('.listenseite-post-results').removeClass('active').slideUp(function() {
                    /*
                    _this.comparisonHolder.find('.row').each(function() {
                        $(this).find('.column').html('');
                    });
                    */
                });

                _this.dataHolder.find('#comparison-' + $(this).find('option:selected').data('comparison')).addClass('active').slideDown();

                if(_this.xhr && _this.xhr.readystate != 4) {
                    _this.xhr.abort();
                }

                _this.xhr = $.ajax({
                    url: 'index.php',
                    type: 'GET',
                    dataType: 'json',
                    data: {
                        id: $('body').data('pid'),
                        L: $('body').data('languid'),
                        type: 1444646286,
                        tx_szcomdbproducts_comparison: {
                            action: 'facet',
                            sys_language_uid: _this.dataHolder.data('language'),
                            category: _this.form.find('.group-selector').val()
                        }
                    },
                    beforeSend: function() {
                        _this.loader.fadeIn();
                        _this.form.find('.variant-selector').each(function() {
                            $(this).find('option:not(:first-child)').remove();
                            $(this).val('');
                        });
                    },
                    success: function (result) {
                        if(result.docs) {
                            _this.processSelectValues(result.docs);
                        }

                        _this.loader.fadeOut();
                        jcf.destroyAll();
                        initCustomForms();
                    }
                });
            });

            $('.facet-form select.variant-selector').change(function(e){
                var column = $(this).data('column');
                var attributes = Array();
                var _loader = _this.loader.find('img').clone();

                _this.dataHolder.find('.listenseite-post-results.active .argument-selector').each(function() {
                    attributes.push($(this).data('attribute'));
                });

                if(_this.xhr && _this.xhr.readystate != 4) {
                    _this.xhr.abort();
                }

                _this.xhr = $.ajax({
                    url: window.location.href,
                    type: 'GET',
                    dataType: 'html',
                    data: {
						id: $('body').data('pid'),
						L: $('body').data('languid'),
                        type: 1444646286,
                        tx_szcomdbproducts_comparison: {
                            pluginName: 'Comparison',
                            controller: 'Comparison',
                            action: 'result',
                            variant: $(this).val(),
                            settings: {
                                storagePid: _this.dataHolder.data('storage'),
                                detailPid: _this.dataHolder.data('detailpid'),
                                attributes: attributes
                            }
                        }
                    },

                    beforeSend: function() {
                        var $tab = _this.dataHolder.find('.listenseite-post-results.active');
                        $tab.find('.column-' + column).html('');
                        $tab.find('.row-attribute-header').find('.column-' + column).addClass('text-center').html('').append(_loader);
                    },

                    success: function (result) {
                        var $column = _this.dataHolder.find('.listenseite-post-results.active .row-attribute-header').find('.column-' + column),
                            $closer = _this.dataHolder.find('.listenseite-post-results.active .row-closer').find("[data-column='" + column
                                + "']");
                        $column.removeClass('text-center');
                        $column.attr('data-uid', $(result).data('uid'));
                        $(result).find('div').each(function() {
                            _this.dataHolder.find('.listenseite-post-results.active .row-attribute-' + $(this).data('attribute')).find('.column-' + column).html($(this).html());
                        });
                        $closer.show();

                        var counter = parseInt(_this.dataHolder.find('.listenseite-post-results.active').attr('data-counter'));
						_this.dataHolder.find('.listenseite-post-results.active').attr('data-counter', ++counter);
						if (counter > 1) {
							_this.dataHolder.find('.row-closer .btn').show();
						}
                    }
                });
            });

			_this.dataHolder.find('.row-closer .btn').click(function(e){

				e.preventDefault();

				var counter = parseInt(_this.dataHolder.find('.listenseite-post-results.active').data('counter'));
				if (counter < 2) {
					return 0;
				}

				var content = _this.dataHolder.find('.comparison-post-results.active .container').clone();
				content.find('.row-closer').remove();
				/*
				content.find('a').each(function() {
					var contentInsideLink = $($(this).html()).clone();
					$(contentInsideLink).before($(this));
					$(this).remove();
				});
				*/

				$('#printcontent').val(content.html());
				$('#printform').submit();

				return 0;

				/*
				console.log(content.html());
				return false;
				*/

				if(_this.xhr && _this.xhr.readystate != 4) {
					_this.xhr.abort();
				}

				_this.xhr = $.ajax({
					url: window.location.href,
					type: 'GET',
					dataType: 'binary',
					data: {
						type: 1444646286,
						tx_szcomdbproducts_comparison: {
							pluginName: 'Comparison',
							controller: 'Comparison',
							action: 'print',
							html: 'test123'
						}
					},

					beforeSend: function() {
						/*
						var $tab = _this.dataHolder.find('.listenseite-post-results.active');
						$tab.find('.row-attribute-header').find('.column-' + column).addClass('text-center').html('').append(_loader);
						*/
					},

					success: function (result) {
						console.log(result);
					},

					complete: function (result) {
						console.log('complete');
					}
				});
			});
        },

        processSelectValues: function(docs) {
            $.each(docs, function (i, item) {
                $.each(item.doclist.docs, function (j, variant) {
                    _this.form.find('.variant-selector').each(function() {
                        $(this).append($('<option>', {
                            value: variant.variant_uid,
                            text: variant.title
                        }));
                        var uid = _this.dataHolder.find('.listenseite-post-results.active .row-attribute-header').find('.column-' + $(this).data('column')).data('uid');
                        $(this).find("option[value='" + uid + "']").attr('selected', 'selected');
                    });
                });
            });
        },

        _updateFacet: function(facet, index, isInit) {

            optionValues = Array();
            for(i=0;i<facet.length;i++) {
                optionValues[facet[i]] = facet[++i];
            }

            if(!_this.form.find('select[name="' + index.substring(0, index.indexOf('_facet')) + '"]').val()) {
                _this.form.find('select[name="' + index.substring(0, index.indexOf('_facet')) + '"] option').each(function(){
                    var $elem = $(this);

                    if($elem.val().length) {
                        if(optionValues[$elem.val()]) {
                            $elem.html($elem.data('value'));
                            $elem.removeAttr('disabled');
                        }
                        else {
                            if(isInit) {
                                $elem.remove();
                            }
                            else {
                                $elem.attr('disabled', 'disabled');
                            }
                        }
                    }
                });
            }
        }
    };

	var $szComdbOverview = {

		isLoading: true,
        dataHolder: null,
        form: null,

		init: function() {
			_this = this;
            _this.dataHolder = $('.comdboverview-holder');
            _this.form = $('.facet-form');
			_this.initListener();
			initSameHeight();
		},

		initListener: function() {
            var _this = this;

			_this.form.find('select').change(function(e){

				var facets = $(this).parents('.facet-holder').nextAll('.facet-holder');
				facets.each(function() {
					var select = $(this).find('select');
					select.val('');
				});

				_this.isLoading = true;

				$.ajax({
					url: 'index.php',
					type: 'GET',
					dataType: 'json',
					data: {
                        id: $('body').data('pid'),
                        L: $('body').data('languid'),
                        no_cache: 1,
                        type: 1444646292,
                        tx_szcomdbproducts_overview: {
                            action: 'result',
                            language: _this.dataHolder.data('language'),
                            category: _this.dataHolder.data('category'),
                            tableheader: _this.dataHolder.data('tableheader'),
                            tables: _this.dataHolder.data('tables'),
                            tablevalues: _this.dataHolder.data('tablevalues'),
                            tablesections: _this.dataHolder.data('tablesections'),
                            tablesectionvalues: _this.dataHolder.data('tablesectionvalues'),
                            facet: _this.form.serializeArray()
                        }
					},
					success: function (result) {
						$.each(_this.dataHolder.find('.variant-holder'), function() {
							if($.inArray( $(this).data('variant'), result.docs ) < 0) {
								$(this).addClass('hidden').fadeOut();
							} else {
								if($(this).hasClass('hidden')) {
									$(this).removeClass('hidden').fadeIn();
								}
							}
						})

						$.each(result.facets, function(index, facet) {
							var facet = this;
							_this.updateFacet(facet, index, false);
						});

                        _this.updateNumFound(_this.dataHolder.find('.variant-holder').not('.hidden').length);

						jcf.destroyAll();
						initCustomForms();
					}
				});
			});

            _this.form.find('.facet-reset').click(function(e) {
                e.preventDefault();

                var facets = _this.form.find('.facet-holder');
                facets.each(function() {
                    var select = $(this).find('select');
                    if(_this.multipleFacet) {
                        $(this).show();
                    }
                    select.removeAttr('disabled');
                    select.find('option[selected="selected"]').each(
                        function() {
                            $(this).removeAttr('selected');
                        }
                    );
                    select.find('option:first').attr('selected','selected');
                });

                _this.form.find('select:first-child').trigger('change');

                return false;
            });
		},

		updateFacet: function(facet, index, isInit) {
            var _this = this;

			optionValues = Array();
			for(i=0;i<facet.length;i++) {
				optionValues[facet[i]] = facet[++i];
			}

			if(!_this.form.find('select[name="' + index.substring(0, index.indexOf('_facet')) + '"]').val()) {
                _this.form.find('select[name="' + index.substring(0, index.indexOf('_facet')) + '"] option').each(function(){
					var $elem = $(this);

					if($elem.val().length) {
						if(optionValues[$elem.val()]) {
							$elem.html($elem.data('value'));
							$elem.removeAttr('disabled');
						}
						else {
							if(isInit) {
								$elem.remove();
							}
							else {
								$elem.attr('disabled', 'disabled');
							}
						}
					}
				});
			}
		},

        updateNumFound: function(numFound) {
            var _this = this;

            _this.form.find('.numFound').parent('strong').addClass('pulse animated');
            window.setTimeout(
                function() {
                    _this.form.find('.numFound').parent('strong').removeClass('pulse animated');
                }, 1000
            );
            _this.form.find('.numFound').html(numFound);
        }
	};

    var $szComdbDownload = {
        page: 0,
        isLoading: true,
        pluginName: 'Download',
        controllerName: 'Download',
        typeNum: 1444646282,
        dataHolder: null,
        form: null,
        downloads : '',
        xhr: null,

        getRequestParams: function(action) {
            var _this = this;

            return request = {
                mvc: {
                    vendor: 'Sunzinet',
                    extensionName: 'SzComdbproducts',
                    pluginName: _this.pluginName,
                    controller: 'Facet',
                    action: action,
                    format: 'json'
                },
                arguments: {
                    'sys_language_uid': _this.dataHolder.data('language'),
                    'category': _this.dataHolder.data('category'),
                    'facet': _this.form.serializeArray(),
                    'offset': _this.page
                }
            };
        },

        init: function() {
            var _this = this;
            if($('.comdbproducts-terms').length) {
                $('.comdbproducts-terms .checkbox input').change(function(e){
                    e.preventDefault();
                    $('.comdbproducts-terms').slideUp();
                    $('.comdbproducts-loader').slideDown();
                    _this.initFacet();
                });
            } else {
                _this.initFacet();
            }
        },

        initFacet: function() {
            var _this = this;
            _this.form = $('.facet-form');
            _this.dataHolder = $('.comdbproducts-holder');
            _this.downloads = '';
            $('.facet-form-filter input').each(function(e) {
                if($(this).is(':checked')) {
                    if(_this.downloads == '') {
                        _this.downloads = $(this).data('value');
                    } else {
                        _this.downloads += ',' + $(this).data('value');
                    }
                }
            });

            /* get all facets */
            $.ajax({
                url: 'index.php',
                type: 'GET',
                dataType: 'json',
                data: {
                    /*eID: 'ajaxDispatcher',
                    id: '2',
                    request: _this.getRequestParams('initDownload')*/
                    id: $('body').data('pid'),
                    L: $('body').data('languid'),
                    no_cache: 1,
                    type: 1444646293,
                    tx_szcomdbproducts_download: {
                        action: 'initDownload',
                        sys_language_uid: _this.dataHolder.data('language'),
                        category: _this.dataHolder.data('category'),
                        facet: _this.form.serializeArray()
                    }
                },
                success: function (result) {
                    $.each(result.facets, function(index, facet) {
                        var facet = this;
                        var element = _this.form.find('select[name="' + index.substring(0, index.indexOf('_facet')) + '"]');
                        if(facet.length) {
                            element.removeAttr('disabled');
                            element.parents('.facet-holder').find('.facet-holder').fadeOut();
                            _this.updateFacet(facet, index, false);
                        }
                        else {
                            element.attr('disabled', 'disabled');
                            element.parents('.facet-holder').find('.facet-holder').fadeOut();
                        }
                    });

                    /* set preselected facets */
                    if(_this.dataHolder.data('facet-name') && _this.dataHolder.data('facet-value')) {
                        _this.form.find('select[name="' + _this.dataHolder.data('facet-name') + '"]').val(_this.dataHolder.data('facet-value'));
                    }
                    else if(_this.form.find('.facet-preselection').length == 0) {
                        var cookieDownloads = _this.getCookie(_this.pluginName);
                        if (cookieDownloads && cookieDownloads.facet && cookieDownloads.facet[_this.dataHolder.data('category')]) {
                            $.each(cookieDownloads.facet[_this.dataHolder.data('category')], function () {
                                if (this.value) {
                                    _this.form.find('select[name="' + this.name + '"]').val(this.value)
                                }
                            });
                        }
                        else {
                            var firstFacet = _this.form.find('select:first');
                            firstFacet.val(firstFacet.find('option:enabled').eq(0).val());
                        }
                    }

                    /* get preselected facets */
                    $.ajax({
                        url: 'index.php',
                        type: 'GET',
                        dataType: 'json',
                        data: {
                            /*eID: 'ajaxDispatcher',
                            id: 2,
                            request: _this.getRequestParams('initDownload')*/
                            id: $('body').data('pid'),
                            L: $('body').data('languid'),
                            no_cache: 1,
                            type: 1444646293,
                            tx_szcomdbproducts_download: {
                                action: 'initDownload',
                                sys_language_uid: _this.dataHolder.data('language'),
                                category: _this.dataHolder.data('category'),
                                facet: _this.form.serializeArray()
                            }
                        },
                        success: function (result) {

                            _this.getDownloads(result.docs);

                            $.each(result.facets, function(index, facet) {
                                var facet = this;
                                var element = _this.form.find('select[name="' + index.substring(0, index.indexOf('_facet')) + '"]');
                                if(facet.length) {
                                    element.removeAttr('disabled');
                                    element.parents('.facet-holder').find('.facet-holder').fadeIn();
                                    _this.updateFacet(facet, index, false);
                                }
                                else {
                                    element.attr('disabled', 'disabled');
                                    element.parents('.facet-holder').find('.facet-holder').fadeOut();
                                }
                            });
                            jcf.destroyAll();
                            initCustomForms();
                        }
                    });
                },
                complete: function() {
                    _this.initListener();
                }
            });
        },

        updateFacet: function(facet, index, isInit) {
            var _this = this;
            var optionValues = Array();

            for(i=0;i<facet.length;i++) {
                optionValues[facet[i]] = facet[++i];
            }

            _this.form.find('input.checkbox[name="' + index.substring(0, index.indexOf('_facet')) + '"]').each(function() {
                var elem = $(this);

                if(optionValues[elem.val()]) {
                    elem.parents('.checkbox').parent('div').fadeIn();
                }
                else {
                    elem.parents('.checkbox').parent('div').fadeOut();
                }
            });

            if(!_this.form.find('select[name="' + index.substring(0, index.indexOf('_facet')) + '"]').val()) {
                _this.form.find('select[name="' + index.substring(0, index.indexOf('_facet')) + '"] option').each(function(){
                    var $elem = $(this);

                    if($elem.val().length) {
                        if(optionValues[$elem.val()]) {
                            /*$elem.html($elem.data('value') + ' (' + optionValues[$elem.val()] + ')');*/
                            $elem.html($elem.data('value'));
                            $elem.removeAttr('disabled');
                        }
                        else {
                            if(isInit) {
                                $elem.remove();
                            }
                            else {
                                $elem.attr('disabled', 'disabled');
                            }
                        }
                    }
                });
            }
        },

        initListener: function() {
            var _this = this;

            _this.form.find('select, input').change(function(e) {

                if(_this.xhr && _this.xhr.readystate != 4) {
                    _this.xhr.abort();
                }

                if($(this).prop("type") == 'checkbox') {
                    if($(this).is(':checked')) {
                        $(this).parents('.checkbox-holder').find('input[type="hidden"]').attr('disabled', 'disabled');
                    } else {
                        $(this).parents('.checkbox-holder').find('input[type="hidden"]').removeAttr('disabled');
                    }
                }

                _this.page = 0;

                var facets = $(this).parents('.facet-holder').nextAll('.facet-holder');
                facets.each(function() {
                    var select = $(this).find('select');
                    select.val('');
                    var checkbox = $(this).find('input[type="checkbox"]');
                    checkbox.attr('checked', '');
                });

                _this.downloads = '';
                $('.facet-form-filter input').each(function(e) {
                    if($(this).is(':checked')) {
                        if(_this.downloads == '') {
                            _this.downloads = $(this).data('value');
                        } else {
                            _this.downloads += ',' + $(this).data('value');
                        }
                    }
                });

                _this.page = 0;
                _this.isLoading = true;

                $.ajax({
                    url: 'index.php',
                    type: 'GET',
                    dataType: 'json',
                    data: {
                        /*eID: 'ajaxDispatcher',
                        id: 2,
                        no_cache: 1,
                        request: _this.getRequestParams('resultDownload')*/
                        id: $('body').data('pid'),
                        L: $('body').data('languid'),
                        no_cache: 1,
                        type: 1444646293,
                        tx_szcomdbproducts_download: {
                            action: 'resultDownload',
                            sys_language_uid: _this.dataHolder.data('language'),
                            category: _this.dataHolder.data('category'),
                            facet: _this.form.serializeArray()
                        }
                    },
                    beforeSend: function() {
                        var cookieDownloads = _this.getCookie(_this.pluginName);
                        if(cookieDownloads && cookieDownloads.facet) {
                            cookieDownloads.facet[_this.dataHolder.data('category')] = _this.form.serializeArray();
                        }
                        else {
                            cookieDownloads = {
                                facet: Array()
                            };
                            cookieDownloads.facet[_this.dataHolder.data('category')] = _this.form.serializeArray();
                        }
                        _this.setCookie(_this.pluginName, cookieDownloads);

                        $('.categories-holder').after($('.comdbproducts-downloader'));
                        $('.categories-holder').after($('.comdbproducts-loader'));
                        $('.comdbproducts-loader').slideDown();
                        $('.comdbproducts-holder .listenseite-post-results').slideUp(function() {
                            $('.comdbproducts-holder').html('');
                        });
                    },
                    success: function (result) {

                        _this.getDownloads(result.docs);

                        $.each(result.facets, function(index, facet) {
                            var facet = this;
                            var element = _this.form.find('select[name="' + index.substring(0, index.indexOf('_facet')) + '"]');

                            if(facet.length) {
                                //element.removeAttr('disabled');
                                element.parents('.facet-holder').fadeIn();
                                _this.updateFacet(facet, index, false);
                            }
                            else {
                                //element.attr('disabled', 'disabled');
                                element.parents('.facet-holder').fadeOut();
                            }

                            _this.updateFacet(facet, index, false);
                        });
                        jcf.destroyAll();
                        initCustomForms();
                    }
                });
            });

            $(window).scroll(function () {

                if (($(window).scrollTop() + 1000 >= ($(document).height() - $(window).height())) && !_this.isLoading) {

                    if(_this.xhr && _this.xhr.readystate != 4) {
                        _this.xhr.abort();
                    }

                    _this.isLoading = true;
                    _this.page++;

                    _this.xhr = $.ajax({
                        url: 'index.php',
                        type: 'GET',
                        dataType: 'json',
                        data: {
                            eID: 'ajaxDispatcher',
                            no_cache: 1,
                            request: _this.getRequestParams('resultDownload')
                        },
                        beforeSend: function () {
                            $('.comdbproducts-loader').appendTo($('.comdbproducts-holder')).show(function() {
                                initFixedScrollBlock();
                            });
                        },
                        success: function (result) {
                            _this.getDownloads(result.docs);
                        }
                    });
                }
            });

            $('.facet-form .facet-reset').click(function(e) {
                e.preventDefault();

                if(_this.xhr && _this.xhr.readystate != 4) {
                    _this.xhr.abort();
                }

                $('.facet-form').find('input.remove-hidden').remove();

                var facets = $('.facet-form').find('.facet-holder');
                facets.each(function() {
                    var select = $(this).find('select');
                    select.removeAttr('disabled');
                    select.find('option[selected="selected"]').each(
                        function() {
                            $(this).removeAttr('selected');
                        }
                    );
                    if (select.prop('multiple')) {
                        select.val('');
                        select.prev('input[type="hidden"]').removeAttr('disabled');
                    } else {
                        select.find('option:first').attr('selected','selected');
                    }
                });

                var checkboxes = $('.facet-form').find('.checkbox');
                checkboxes.each(function() {
                    var checkbox = $(this).find('input[type="checkbox"]');
                    console.log(checkbox);
                    if (checkbox.is(':checked')) {
                        checkbox.removeAttr('checked');
                    }
                });

                jcf.refreshAll();

                if(_this.multipleFacet) {
                    var firstFacet = $('.facet-form').find('select:first');
                    firstFacet.val(firstFacet.find('option:enabled').eq(0).val());
                }

                $('.facet-form select:first').trigger('change');

                return false;
            });
        },

        getDownloads: function(products) {
            var _this = this;

            _this.xhr = $.ajax({
                url: window.location.href,
                type: 'POST',
                dataType: 'html',
                data: {
                    type: _this.typeNum,
                    no_cache: 1,
                    tx_szcomdbproducts_download: {
                        pluginName: _this.pluginName,
                        controller: _this.controllerName,
                        action: 'result',
                        products: products,
                        settings: {
                            category: _this.dataHolder.data('category'),
                            download: {
                                downloads: _this.downloads
                            }
                        }
                    }
                },
                success: function (result) {
                    if($(result).hasClass('no-results') && $('.comdbproducts-holder section').length) {
                        $('.comdbproducts-loader').slideUp();
                    }
                    else {
                        $('.comdbproducts-holder').append(result);

                        $('.comdbproducts-holder .document-holder').each(function() {
                            if($(this).find('.downloadcenter-filelist .post').length == 0) {
                                $(this).remove();
                            }
                        });

                        _this.initListenerDownloads();

                        if($('.categories-holder').hasClass('init')) {
                            $('.categories-holder').removeClass('init').slideDown();
                        }
                        $('.comdbproducts-loader').slideUp();
                        $('.comdbproducts-holder .listenseite-post-results').slideDown(function(){
                            initFixedScrollBlock();
                        });

                        if($(result).not('.no-results').length) {
                            _this.isLoading = false;
                        }
                    }
                }
            });
        },

        initListenerDownloads: function() {
            var _this = this;

            $('.downloadcenter-section a.btn-download').unbind('click');
            $('.downloadcenter-section a.btn-download').click(function(e) {
                e.preventDefault();

                if(!JSZip.support.blob) {
                    alert("This demo works only with a recent browser !");
                    return;
                }

                $('.comdbproducts-downloader').appendTo($(this).parents('.downloadcenter-section')).fadeIn();

                var zip = new JSZip();
                var deferreds = [];
                var filelist = $(this).parents('.downloadcenter-section').find('.downloadcenter-filelist');
                var filename = $(this).data('download');

                // find every checked item
                filelist.find('.downloadcenter-files').each(function () {
                    var url = $(this).data("url");
                    var filename = url.replace(/.*\//g, "");
                    deferreds.push(_this.deferredAddZip(url, filename, zip));
                });

                // when everything has been downloaded, we can trigger the dl
                $.when.apply($, deferreds).done(function () {
                    var blob = zip.generate({type:"blob"});

                    // see FileSaver.js
                    saveAs(blob, filename);

                    $('.comdbproducts-downloader').fadeOut();

                }).fail(function (err) {

                });

                return false;
            });
        },

        deferredAddZip: function(url, filename, zip) {
            var deferred = $.Deferred();
            JSZipUtils.getBinaryContent(url, function (err, data) {
                if(err) {
                    deferred.reject(err);
                } else {
                    zip.file(filename, data, {binary:true});
                    deferred.resolve(data);
                }
            });
            return deferred;
        },

        getCookie: function(cname) {
            $.cookie.json = true;
            return $.cookie(cname);
        },

        setCookie: function(cname, cvalue, exdays) {
            $.cookie.json = true;
            $.cookie(cname, cvalue, {path: '/'});
        }
    };

    $(document).ready(function () {

        if ($('.tx-sz-comdbproducts').length) {
            if ($('section.product-area').length) {
                $szComdbproducts.initDetail();
            }
            else if ($('.product-view').length) {
                $szComdbproducts.initProducts();
            }
            else if ($('.commerceconnector-view').length) {
                $szComdbproducts.initCommerceConnector();
            }
            else if ($('.reference-view').length) {
                $szComdbproducts.initReferences();
            }
            else if ($('.download-view').length) {
                $szComdbDownload.init();
            }
            else if ($('.comparison-view').length) {
                $szComdbComparison.init();
            }
            else if ($('.overview-view').length) {
                $szComdbOverview.init();
            } else {
                $('.comdbproducts-loader').slideUp();
                $szComdbproducts.initInfinitescroll();
            }
        }

        if ($('.powermail_form .szcomdbproducts').length) {
            $szComdbproductsPowermail.init();
        }

        if ($('a.product-link').length) {
            $szComdbproducts.initProductLinks();
        }

        $('.language-dropdown .dropdown-menu a').click(function() {
            if($('body').data('languid') != $(this).data('languid')) {
                $.removeCookie('products', { path: '/' });
            }
        });

		initComdbproductTeaser();

		$('#myCarousel').carousel({
			interval:   4000
		});

        jQuery('.t3colorbox-products').colorbox({
            opacity:false,
            current:"{current} / {total}",
            previous:"",
            next:"",
            close:"schliessen",
            slideshowStart:"",
            slideshowStop:"",
            slideshowAuto:false,
            maxWidth:"95%",
            maxHeight:"95%",
            rel:function() { return $(this).data('rel')}
        });
	});

}(jQuery));

/* szComdbproducts - Teaser */
function initComdbproductTeaser() {
	jQuery('.szComdbproductTeaser').each(function() {
		var holder = jQuery(this);
		holder.data('szComdbproductTeaser', new szComdbproductTeaser({
			holder: this
		}));
	});

	jQuery('.szComdbproductSlider').each(function() {
		var holder = jQuery(this);
		holder.data('szComdbproductSlider', new szComdbproductTeaser({
			holder: this,
			isSlider: true
		}));
	});
}

function szComdbproductTeaser(opt) {
	this.options = jQuery.extend({
		holder: null,
		isSlider: false,
		teaserUid: null,
		slider: null,
		cname: 'products'
	}, opt);
	this.init();
}

szComdbproductTeaser.prototype = {
	init: function () {
		if(this.options.isSlider) {
			this.getSlider();
		}
		else {
			this.getTeaser();
		}
	},

	getTeaser: function() {
        var _this = this;

		var cookie = _this.getCookie(_this.options.cname);
		if(cookie && cookie.teaser) {
			_this.options.teaserUid = cookie.teaser;
		}

		if (_this.options.holder && _this.options.teaserUid) {

			/* AJAX call */
			$.ajax({
				url: window.location.href,
				type: "GET",
				data: {
					id: 1,
                    type: 1444643039,
					no_cache: 1,
					teaserUid: _this.options.teaserUid
				},
				dataType : 'html',
				success: function(res) {
					var element = $(res);
					element.hide();
					$(_this.options.holder).find('section').slideUp().remove();
                    element.prependTo($(_this.options.holder));
					element.slideDown();
				},
				error: function(err) {
					console.log(err);
				}
			});
		}
	},

    updateTeaser: function(teaserUid) {
        var _this = this;

        if (_this.options.isTeaser) {
            return 0;
        }

        var cookie = _this.getCookie(_this.options.cname);
        cookie.teaser = teaserUid;
        _this.setCookie(_this.options.cname, cookie);
        _this.getTeaser();
    },

	getSlider: function() {
        var _this = this;

		var cookie = _this.getCookie(_this.options.cname);
		if(cookie && cookie.slider) {
            _this.options.slider = cookie.slider;
		}

		if (_this.options.holder && _this.options.slider) {

			/* AJAX call */
			$.ajax({
				url: 'index.html',
				type: "GET",
				data: {
                    id: 1,
					type: 1445422235,
					no_cache: 1,
					arguments: {
						request: 1,
						detailPid: $(_this.options.holder).data('detailpid'),
						slider: _this.options.slider
					}
				},
				dataType : 'html',
				success: function(res) {
					var element = $(res);
					element.find('H1').html($(_this.options.holder).data('title'));
					element.hide();
					element.appendTo($(_this.options.holder));
					element.slideDown();
				},
				error: function(err) {
					console.log(err);
				}
			});
		}
	},

	getCookie: function(cname) {
		$.cookie.json = true;
		return $.cookie(cname);
	},

    setCookie: function(cname, cvalue, exdays) {
        $.cookie.json = true;
        $.cookie(cname, cvalue, {path: '/'});
    }
};