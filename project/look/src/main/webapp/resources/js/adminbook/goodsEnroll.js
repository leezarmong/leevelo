function bookinsert() {
    var params = {
        bookName: $("#bookName").val().trim(),
        authorId: $("#authorId").val().trim(),
        publeYear: $("#publeYear").val().trim(),
        publisher: $("#publisher").val().trim(),
        cateCode: $("#cateCode").val().trim(),
        bookPrice: $("#bookPrice").val().trim(),
        bookStock: $("#bookStock").val().trim(),
        bookDiscount: $("#bookDiscount").val().trim(),
        bookIntro: $("#bookIntro").val().trim(),
        bookContents: $("#bookContents").val().trim()
    };

    // Log the input field values
    console.log("bookName:", params.bookName);
    console.log("authorId:", params.authorId);
    console.log("publeYear:", params.publeYear);
    console.log("publisher:", params.publisher);
    console.log("cateCode:", params.cateCode);
    console.log("bookPrice:", params.bookPrice);
    console.log("bookStock:", params.bookStock);
    console.log("bookDiscount:", params.bookDiscount);
    console.log("bookIntro:", params.bookIntro);
    console.log("bookContents:", params.bookContents);

    if (
        !params.bookName ||
        !params.authorId ||
        !params.publeYear ||
        !params.publisher ||
        !params.cateCode ||
        !params.bookPrice ||
        !params.bookStock ||
        !params.bookDiscount ||
        !params.bookIntro ||
        !params.bookContents
    ) {
        alert("필수항목이 비어있습니다. 입력해주세요.");
    } else {
        $.ajax({
            type: "POST",
            url: "insertbook",
            data: params,
            success: function (data) {
                alert("입력 완료..!");
                window.location.href = "goodsEnroll";
            }
        });
    }
}
