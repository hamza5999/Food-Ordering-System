(->
  class Discounts
    initialize: ->
      $('#available_discounts').click ->
        $('#liveDiscounts').val 1
        $('#closedDiscounts').val 0
        return
      $('#unavailable_discounts').click ->
        $('#liveDiscounts').val 0
        $('#closedDiscounts').val 1
        return
      $('#all_discounts').click ->
        $('#liveDiscounts').val 0
        $('#closedDiscounts').val 0
        return
      return

  window.Discounts = new Discounts()

).call this
