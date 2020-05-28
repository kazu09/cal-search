// インクリメンタルサーチ実装予定なし

// $(function() {

//   var search_list = $(".content");

//   function appendTweet(tweet) {
//     var html = `<div class="content__left">
//                   <div class="content__left--image">
//                     <img src = ${tweet.image} >
//                   </div>
//                 </div>
//                 <div class="content__right">
//                   <div class="content__right__top">
//                     <a class= "content__right__top" href=${tweet.id}> ${tweet.title} </a>  
//                   </div>
//                   <div class="content__right__bottom">
//                     <div class="content__right__bottom--date">
//                       ${tweet.data}
//                       kcal
//                     </div>
//                   </div>
//                 </div>`
      
//     search_list.append(html);
//   }

//   function appendErrMsgToHTML(msg) {
//     var html = `<div class='name'>${ msg }</div>`
//     search_list.append(html);
//   }


//   $(".comment__search-input").on("keyup", function(){
//     var input = $(".comment__search-input").val();
//     console.log(input)
//     $.ajax({
//       type: "GET",
//       url: '/tweets/search',
//       data: { keyword: input },
//       dataType: "json"
//     })
//     .done(function(tweets) {
//       // debugger;
//       console.log(tweets)
//       search_list.empty();
//       if (tweets.length !== 0) {
//         tweets.forEach(function(tweet){
//           appendTweet(tweet);
//         });
//       }
//       else {
//         appendErrMsgToHTML("一致するツイートがありません");
//       }
//     })
//     .fail(function() {
//       alert('error');
//     });
//   });
// });