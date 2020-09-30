// 사진등록 
$(".picture").on("change",function(e){
    // 파일 이름 추가
    var photoseq = $(e.target).parent().attr('class');
    var fileValue = $(e.target).val().split("\\");
    var fileName = fileValue[fileValue.length-1]; // 파일명
    $(e.target).prev().children("p").html(fileName);
    
    

});
//메인사진 미리보기
$("#picture1").on("change",function(e){ 
    // 사진 미리보기
    $.each(e.target.files,(i,v)=>{           
        let reader=new FileReader();
        reader.onload=e=>{
            let img=$(".prevImg");
            img.attr("src",e.target.result);
            img.css({"border":"0px"});
        }
        reader.readAsDataURL(v);
    });
});
// 사진 삭제 -버튼 클릭
$(".deletePic").on("click",function(e){
    $(e.target).siblings(".picture").val("");
    $(e.target).siblings(".picLine").children("p").html("");
});
//메인사진 삭제->미리보기 삭제
$("#deletePic1").on("click",function(e){
    let img=$(".prevImg");
    img.attr("src","");
    img.css({"border":"1px solid"});
})

// 주변장소 추가
$(".addPlace").on("click", function (e) {
    $(e.target).siblings("div").removeClass("disnone");
    $(e.target).addClass("disnone");
});
// 주변장소 삭제
$(".deletePlace").on("click", function (e) {
    $(e.target).parent().addClass("disnone");
    $(e.target).parent().siblings(".addPlace").removeClass("disnone");
});