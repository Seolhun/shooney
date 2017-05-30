/* Write here your custom javascript codes */
var csrfHeader=$("#csrfHeader").attr("content");
var	csrfToken=$("#csrfToken").attr("content");
var root="/shooney";

/* AJAX 통신 처리 */
var GithubService = (function() {
	var githubSearch = function(){
        var gitSearch = {}, topics = [], searchType, topic;

        topic = $("input[name='topic']").val();
        topics.push(topic);
        searchType = $("select[name='searchType']").val();

        gitSearch["searchType"] = searchType;
        gitSearch["topics"] = topics;
        $.ajax({
            url : root +"/github/search",
            type : 'POST',
            timeout : 60000,
            data: JSON.stringify(gitSearch),
            dataType : "json",
            beforeSend: function(xhr) {
                xhr.setRequestHeader("Accept", "application/json");
                xhr.setRequestHeader("Content-Type", "application/json");
                xhr.setRequestHeader(csrfHeader, csrfToken);
            }, success: function(data) {
                console.log(data);
                $("#searchResult").append(data);
            }, error : function(error){
                console.log('Error', error);
            }
        });
	}

    var test = function(){
        var searchType = $("select[name='searchType']").val();
        $.ajax({
            url : root +"/github/test",
            type : 'GET',
            timeout : 60000,
            data: {
                "searchType" : searchType
            },
            dataType : "json",
            beforeSend: function(xhr) {
                xhr.setRequestHeader("Accept", "application/json");
                xhr.setRequestHeader("Content-Type", "application/json");
                xhr.setRequestHeader(csrfHeader, csrfToken);
            }, success: function(data) {
                console.log(data);
                $("#searchResult").append(data);
            }, error : function(error){
                console.log('Error', error);
            }
        });
    }

	return {
        githubSearch : githubSearch,
        test : test
	};
})();