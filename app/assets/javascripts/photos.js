function drag_drop(event) {
	event.preventDefault();


	var imgVal = event.dataTransfer.files[0];
	var nameVal = event.dataTransfer.files[0].name;
	var desVal = event.dataTransfer.files[0].size + " bytes is the size of this file";

	document.getElementById('file-name').value = nameVal;
	document.getElementById('file-description').value = desVal;
	document.getElementById('file-img').value = imgVal;

}