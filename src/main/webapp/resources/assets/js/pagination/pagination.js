window.pagObj = $('#pagination').twbsPagination({
    totalPages: [[${dataListPage.totalPages}]], // 전체 페이지
    startPage: parseInt([[${dataListPage.number}]] + 1), // 시작(현재) 페이지
    visiblePages: 10, // 최대로 보여줄 페이지
    prev: "‹", // Previous Button Label
    next: "›", // Next Button Label
    first: '«', // First Button Label
    last: '»', // Last Button Label
    onPageClick: function (event, page) { // Page Click event
        console.info("current page : " + page);
    }
}).on('page', function (event, page) {
    searchDataList(page);
});