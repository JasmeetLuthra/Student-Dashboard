function startAjax() {
  var d = document.getElementById("search").value;
 // alert(d);
 var params = {search_string:d};
 
$.ajax({
  type: "GET",
  data: params,
  url: "http://localhost:3000/searchh",

  success: function(data){
      for(i=0; i<data.length; i++){
      	var content = 'NAME : '+data[i].name  ;
	    content += ' DOB : '+data[i].dob ;
	    content += ' PHONE : '+data[i].phone  ;

	  
	    $("#newpage").append(content);

      }
      $('#name_attribute').text("Jasmeet")

      window.location.href = 'http://localhost:3000/aj';
    },
  error: function(jqXHR, textStatus, errorThrown){}


 });

}
   
