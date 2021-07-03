class Facts{
String ? fact;

Facts({
this.fact,


});

factory Facts.space(Map<String,dynamic> faccion){
  return Facts(
    fact: faccion[ "fact"] ,

    );
}

}