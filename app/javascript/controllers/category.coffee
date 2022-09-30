(->
  class Category
    initialize: ->
      $('#available_i_groups').click ->
        $('#attainableCategories').val 1
        $('#unattainableCategories').val 0
        return
      $('#unavailable_i_groups').click ->
        $('#attainableCategories').val 0
        $('#unattainableCategories').val 1
        return
      $('#all_i_groups').click ->
        $('#attainableCategories').val 0
        $('#unattainableCategories').val 0
        return

  window.Category = new Category()

).call this
