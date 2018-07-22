(function() {
	var client = algoliasearch('J4YQ8LYBC5', 'ef2fab47a2721c53539c56c3f2c73b01');
	var index = client.initIndex('products');
	var enterPressed = false;
	//initialize autocomplete on search input (ID selector must match)
	autocomplete('#aa-search-input',
	{ hint: false }, {
	    source: autocomplete.sources.hits(index, {hitsPerPage: 16}),
	    //value to be displayed in input control after user's suggestion selection
	    displayKey: 'name',
	    //hash of templates used when rendering dataset
	    templates: {
	        //'suggestion' templating function used to render a single suggestion
	        suggestion: function(suggestion) {
	        	const markup = `
					<div class="algolia-result">
						<span>${suggestion._highlightResult.name.value}</span>
						<span>$${(suggestion.price / 100).toFixed(2)}</span>
					</div>
					<div>
						<img src="${window.location.origin}/storage/${suggestion.image}" alt="img" class="algolia-thumb">
					</div>
	        	`;
	        	return markup;
	          // return '<span>' +
	          //   suggestion._highlightResult.name.value + '</span><span>' +
	          //   suggestion.price + '</span>';
	        },
	        empty: function(result) {
	        	return 'Sorry, we did not find any results for "' + result.query + '"';
	        }
	    }
	}).on('autocomplete:selected', function (event, suggestion, dataset) {
		window.location.href = window.location.origin + '/shop/' + suggestion.slug;
		enterPressed = true;
	}).on('keyup', function (event) {
		if(event.keyCode == 13 && !enterPressed) {
			window.location.href = window.location.origin + '/search-algolia?query=' + document.getElementId('aa-search-input').value;
		}
	});
})();