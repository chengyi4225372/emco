window.ParsleyConfig = {
	classHandler: function ( parsleyField) {
		return parsleyField.$element.parent();
	},
	errorClass: 'error',
	errorsWrapper: '<span class="error-holder"></span>',
	errorTemplate: '<span></span>',
	successClass: 'success',
	listeners: {
		onFieldValidate: function(elem, ParsleyField) {
			console.log("validate", elem);
			return false;
		},
		onFieldError: function(elem, constraints, ParsleyField) {
			console.log("error", elem);
		}
	}
};