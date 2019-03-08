/***************************************************************
 *  Copyright notice
 *
 *  (c) 2012 Alexander Kellner <alexander.kellner@in2code.de>, in2code
 *
 *  All rights reserved
 *
 *  This script is part of the TYPO3 project. The TYPO3 project is
 *  free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  The GNU General Public License can be found at
 *  http://www.gnu.org/copyleft/gpl.html.
 *
 *  This script is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  This copyright notice MUST APPEAR in all copies of the script!
 ***************************************************************/

jQuery(document).ready(function($) {
	$.fn.powermailTabs = function(options) {
		'use strict';
		var $this = jQuery(this);
		options = jQuery.extend({
			container: 'fieldset.powermail_fieldset',
			header: 'legend',
			tabs: true,
			navigation: true,
			openTabOnError: true,
			tabIndex: true
		}, options);

		// initial show first fieldset
		hideAllFieldsets($this, options);
		$this.find(options.container).first().addClass('act').show();

        jQuery('.powermail_tab_navigation, .powermail_tabmenu').remove();
		generateButtonNavigation($this, options);
		generateTabNavigation($this, options);
	};

	/**
	 * Show Tab
	 *
	 * @param {object} tab
	 * @param {object} form
	 * @param {array} options
	 * @param {int} clickedIndex
	 * @return {void}
	 */
	function showTab(tab, form, options, clickedIndex) {
        $('html, body').animate({ scrollTop: ($('#powermail_tabmenu').offset().top-100)}, 'slow');
		$('#powermail_tabmenu > li.act').removeClass('act');
		tab.addClass('act');
		hideAllFieldsets(form, options);
        $('.powermail_fieldset', form).slice(clickedIndex, clickedIndex + 1).addClass('act').show();
	}

	/**
	 * Hide all fieldsets
	 *
	 * @param {object} element
	 * @param {array} options
	 * @return {void}
	 */
	function hideAllFieldsets(element, options) {
		element.find(options.container).removeClass('act').hide();
	}

	/**
	 * Generate Button Navigation
	 *
	 * @param {object} element
	 * @param {array} options
	 * @return {void}
	 */
	function generateButtonNavigation(element, options) {
		if (!options.navigation) {
			return;
		}

		// buttons
		element.find(options.container).each(function(i) {
			var navigationContainer = $('<div />')
				.addClass('powermail_fieldwrap')
				.addClass('powermail_tab_navigation')
				.appendTo($(this));

			/*
            if (i > 0 && i < (element.find(options.container).length - 1)) {
				navigationContainer.append(createPreviousButton(element, options, $(this).prev(options.container).find(options.header)));
			}
			*/
			if (i < (element.find(options.container).length - 1)) {
				navigationContainer.append(createNextButton(element, options, $(this).next(options.container).find(options.header)));
			}
		});
	}

	/**
	 * Create next button
	 *
	 * @param {object} element
	 * @param {array} options
	 * @return {object}
	 */
	function createPreviousButton(element, options, header) {
		return $('<a />')
			.prop('href', '#')
			.addClass('powermail_tab_navigation_previous btn btn-back btn-default pull-left')
			.html('<span>' + header.text() + '</span>')
			.click(function(e) {
				e.preventDefault();
				showPreviousTab(element, options);
			});
	}

	/**
	 * Create next button
	 *
	 * @param {object} element
	 * @param {array} options
	 * @return {object}
	 */
	function createNextButton(element, options, header) {
		return $('<a />')
			.prop('href', '#')
			.addClass('powermail_tab_navigation_next btn btn-default pull-right')
			.html('<span>' + header.text() + '</span>')
			.click(function(e) {
				e.preventDefault();
				validateTab(element, options);
			});
	}

	/**
	 * Show next Tab
	 *
	 * @param {object} element
	 * @param {array} options
	 * @return {void}
	 */
	function showNextTab(element, options) {
        $('html, body').animate({ scrollTop: ($('#powermail_tabmenu').offset().top-100)}, 'slow');
        var currentActiveTab =  $('#powermail_tabmenu').find('> li').index($('#powermail_tabmenu .act'));
		$('#powermail_tabmenu > li.act').removeClass('act').next().addClass('act');
        /*
        if($('#powermail_tabmenu').find('> li.act').is(':last-child')) {
            $('#powermail_tabmenu').find('> li.act').addClass('success');
        }
        */
		hideAllFieldsets(element, options);
		element.find('.powermail_fieldset').slice(currentActiveTab + 1, currentActiveTab + 2).addClass('act').show();
	}

	/**
	 * Show previous Tab
	 *
	 * @param {object} element
	 * @param {array} options
	 * @return {void}
	 */
	function showPreviousTab(element, options) {
		var currentActiveTab = $('#powermail_tabmenu').find('> li').index($('#powermail_tabmenu .act'));
		$('#powermail_tabmenu > li.act').removeClass('act').prev().addClass('act');
		hideAllFieldsets(element, options);
		element.find('.powermail_fieldset').slice(currentActiveTab - 1, currentActiveTab).addClass('act').show();
	}

	/**
	 * Generate Tabs
	 *
	 * @param {object} element
	 * @param {array} options
	 * @return {void}
	 */
	function generateTabNavigation(element, options) {
		if (!options.tabs) {
			return;
		}

		// generate menu
		var $ul = $('<ul />', {
			'id': 'powermail_tabmenu',
			'class': 'powermail_tabmenu listeansicht-lists'
		}).insertBefore(
			element.closest('.tx-powermail')
		);

		// all containers
		element.find(options.container).each(function(i, $fieldset){
			if($(this).find(options.header).length) {
				//tab_menu
				var li = $('<li/>')
					.html($(this).find(options.header).html())
					.addClass((i==0) ? 'act' : '')
					.addClass('item' + i)
					.on('click keypress', {
						container: element.find(options.container),
						fieldset: $($fieldset)
					}, function(e) {
                        e.preventDefault();
                        if ($(this).is('.powermail_tabmenu li:last-child') || $(this).hasClass('act') || $('#powermail_tabmenu > li:last-child').hasClass('act')) {
                            return 0;
                        }
                        if ($(this).hasClass('success')) {

                            if ($('#powermail_tabmenu > li:last-child').hasClass('success')) {
                                $('#powermail_tabmenu > li:last-child').removeClass('success');
                            }

                            var indexTab = $('#powermail_tabmenu > li').index($(this));
                            showTab($(this), element, options, indexTab);
                        } else {
                            validateTab(element, options);
                        }
					});
				if (options.tabIndex) {
					li.prop('tabindex', i);
				}
				$ul.append(li);
			}
		});
	}

	function validateTab(element, options) {

        $(element).parsley().validate();

		$('.powermail_fieldset.act', element).find('select[required="required"]').each(function(){
			if(!$(this).parsley().isValid()) {
				$(this).parents('.form-group').addClass('error');
			} else {
				$(this).parents('.form-group').removeClass('error');
			}
		});

        var errorFieldset = false;
        $('.powermail_fieldset.act', element).find('.form-group, .powermail_fieldwrap_check .jcf-checkbox').each(function () {
            if ($(this).hasClass('error')) {

            }

            if ($(this).find('input, select').length && $(this).find('input, select').attr('required') && !$(this).find('input, select').parsley().isValid()) {
                errorFieldset = true;
				console.log($(this).find('input, select'));
            }
        });

        if (errorFieldset) {
            $('#powermail_tabmenu').find('li.act').addClass('error');
            return false;
        }
        else {
            // Reset
            if ($.fn.parsley) {
                $(element).parsley().reset();
            }
            // mark tab as successfully validated
            $('#powermail_tabmenu').find('li.act').removeClass('error').addClass('success');
            if ($(element).find('> .form-holder .powermail_fieldset:last').prev('.powermail_fieldset').hasClass('act')) {
                $(element).trigger('submit');
            }
            showNextTab(element, options);
        }
	}


	function __validateTab(element, options, tab) {

		console.log(element);
		return;

		if($(this).hasClass('act')) {
			return 0;
		}

		$('.powermail_fieldset.act', element).find('.szcomdbproducts').each(function(){
			if(!$(this).val()) {
				$(this).parents('.form-group').addClass('error');
			} else {
				$(this).parents('.form-group').removeClass('error');
			}

			if($(this).data('szcomdbproducts-type') == 3) {
				return false;
			}
		});

		var indexTab = $('.powermail_tabmenu li', element).index($(this));

		if($('.powermail_tabmenu li.act').not('li:last-child').length) {

			/* no animation
			 $('.powermail_fieldset.act', form).find('.comdbproducts-loader').fadeIn();
			 */

			$(element).trigger('submit');
			window.setTimeout(function () {

				/* no animation
				 $('.powermail_fieldset.act', form).find('.comdbproducts-loader').fadeOut();
				 */


				var errorFieldset = false;
				$('.powermail_fieldset.act', element).find('.form-group').each(function () {
					if ($(this).hasClass('error')) {
						errorFieldset = true;
					}
				});
				if (errorFieldset) {
					$('.powermail_tabmenu li.act', element).addClass('error');
					return 0;
				}
				else {
					// Reset
					if ($.fn.parsley) {
						$(element).parsley().reset();
					}
				}
				$('.powermail_tabmenu li.act', element).removeClass('error').addClass('success');

				showTab($(this), element, options, indexTab);

			}, 500);
		}
		else {
			showTab($(this), element, options, indexTab);
		}

	}
});