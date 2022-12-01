(->
  class FoodItem
    initialize: ->
      $('#categories_field').change ->
        category_id = $('#categories_field').val()
        # console.log('Here the value is: ' + id)
        $.ajax
          type: 'GET'
          url: '/options_price'
          data:
            category: category_id
        return
      return

  window.FoodItem = new FoodItem()

).call this
