//$(document).ready(function(){
	var searchForm = new Varien.searchForm('search_mini_form', 'search', 'Rechercher...');
	searchForm.initAutocomplete('http://marechal.oxfoz.net/catalogsearch/ajax/suggest/', 'search_autocomplete');
		
	var newsletterSubscriberFormDetail = new VarienForm('newsletter-validate-detail');
	new Varien.searchForm('newsletter-validate-detail', 'newsletter', 'Saisissez votre email');

//});