</body>
<script>
	/* 현재 페이지 확인 후 링크 스타일 변경 */
	const currentPath = location.pathname;
	function pathCheck(path) {
		path.style.color = "white";
		path.style.borderBottom = "3px solid white";
	}
	if(currentPath === "/main") {
		const main = document.querySelector("#category_main");
		pathCheck(main);
	} else if(currentPath === "/board") {
		const board = document.querySelector("#category_community");
		pathCheck(board);
	} else if(currentPath === "/multi") {
		const multi = document.querySelector("#category_multi");
		pathCheck(multi);
	}
	function loginButton() {
		location.href = "/loginForm";
	}
	function logoutButton() {
		location.href = "/logout";
	}
</script>
</html>