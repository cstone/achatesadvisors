//= require active_admin/base
//= require tinymce

$(document).ready(function() {
    tinyMCE.init({
        mode: 'specific_textareas',
        editor_selector: 'tinymce',
        theme: 'advanced'
    });
});