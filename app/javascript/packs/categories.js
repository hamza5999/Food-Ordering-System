window.onload = function()
{
  $(function(){
    $('#available_i_groups').click(function() 
    {
      $("#attainableCategories").val(1);
      $("#unattainableCategories").val(0);
    });

    $('#unavailable_i_groups').click(function() 
    {
      $("#attainableCategories").val(0);
      $("#unattainableCategories").val(1);
    });

    $('#all_i_groups').click(function() 
    {
      $("#attainableCategories").val(0);
      $("#unattainableCategories").val(0);
    });
  });
}
