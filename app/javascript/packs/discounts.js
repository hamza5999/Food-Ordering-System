window.onload = function()
{
  $(function(){
    $('#available_discounts').click(function()
    {
      $("#liveDiscounts").val(1);
      $("#closedDiscounts").val(0);
    });

    $('#unavailable_discounts').click(function()
    {
      $("#liveDiscounts").val(0);
      $("#closedDiscounts").val(1);
    });

    $('#all_discounts').click(function()
    {
      $("#liveDiscounts").val(0);
      $("#closedDiscounts").val(0);
    });
  });
}
