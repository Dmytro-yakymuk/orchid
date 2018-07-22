(function() {

	const search = instantsearch({
	  appId: 'J4YQ8LYBC5',
	  apiKey: 'ef2fab47a2721c53539c56c3f2c73b01',
	  indexName: 'products',
	  routing: true
	});

	search.addWidget(
	    instantsearch.widgets.hits({
	      container: '#hits',
	      templates: {
	        empty: 'No results',
	        item: function(item) {
	        	return `
	            <div class="col-md-4">
                <div class="post">
                  <div class="img-wrapper js-set-bg-blog-thumb">
                    <a href="blog-detail.html">
                      <img src="${window.location.origin}/storage/${item.image}" alt="Image" />
                    </a>
                  </div>
                  <div class="desc">
	                  <div class="fl">
	                    <h4>
	                      <a class="product-name" href="{{ route('shop.show', $product->slug) }}">${item._highlightResult.name.value}</a>
	                    </h4>
	                    <h2 class="price">$${(item.price / 100).toFixed(2)}</h2>
	                  </div>
                    <p class="meta">
                      <span class="time">January 02, 2017</span>
                      <span class="comment">2</span>
                    </p>
                    <p>${item._highlightResult.description.value}</p>
                  </div>
                </div>
              </div>
	        	`;
	        } 

	        //'<em>Hit {{objectID}}</em>: {{{_highlightResult.name.value}}}'
	      }
	    })
	);

	// initialize SearchBox
  search.addWidget(
    instantsearch.widgets.searchBox({
      container: '#search-box',
      placeholder: 'Search for products'
    })
  );

  // initialize pagination
  search.addWidget(
    instantsearch.widgets.pagination({
      container: '#pagination',
      maxPages: 12,
      // default is to scroll to 'body', here we disable this behavior
      scrollTo: false
    })
  );

  search.addWidget(
	  instantsearch.widgets.stats({
	    container: '#stats-container'
	  })
	);

	// initialize RefinementList
  search.addWidget(
    instantsearch.widgets.refinementList({
      container: '#refinement-list',
      attributeName: 'categories'
    })
  );

	search.start();

})();