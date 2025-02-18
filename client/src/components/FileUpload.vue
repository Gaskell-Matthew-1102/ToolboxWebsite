<script>
  import axios from 'axios';

  export default {
    name: "ProjectHomepage",
    data() {
      return {
        msg: '',
      };
    },
    methods: {
      getMessage() {
        const path = 'http://localhost:8080/fileupload';
        axios.get(path)
          .catch((error) => {

            console.error(error);
          });
      },
    },
    created() {
      this.getMessage();
    },
  };
</script>

<template>
  <html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ url_for('static', filename='styles/file-upload.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>VEDB Toolbox</title>
  </head>
  <body>
    <div class="container">
        <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
          <div class="col-md-3 mb-2 mb-md-0">
            <a href="/" class="d-inline-flex link-body-emphasis text-decoration-none">
              <img class="d-block mx-auto mb-4" src="../../static/images/vedblogo.png" alt="" width="40" height="40">
            </a>
          </div>

          <div class="col-md-3 text-end">
          </div>
        </header>
      </div>
    <br>
    <h1 class="h1_title">Upload Files</h1>
    <div class="upload-container">
        <div class="upload-form-container">
            <h1 class="upload-container-text">Video Files</h1>
            </div>
            <div class="description-container">
                <div class="description">
                    <div class="description-area">
                        <p>The video files for this dataset can be found on
                    <a href="https://nyu.databrary.org/volume/1612" style="color:rgb(122, 196, 223)" target="_blank" ref="noopener noreferrer">Databury</a>.
                    After navigating to this website,
                    the recorded sessions can be viewed. They can be sorted by participant information, the
                    condition of the data recording, the task performed during the recording, or the context of
                    the setting. Once you have navigated to the session you would like to view, either click on the
                    download for the zip file, or copy the link to that address. If you are downloading the zip file,
                    after unzipping you should see four files, three videos (.mp4) and one comma-separated values
                    file (.csv). All four of these files should be uploaded. If using the download via link feature,
                    just paste the link into the text box and click download.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="upload-container">
            <div class="upload-form-container">
            <h1 class="upload-container-text">Data Files</h1>
            </div>
            <div class="description-container">
                <div class="description">
                    <div class="description-area">
                    <p>After uploading the video files, navigate to the
                    <a href="https://osf.io/2gdkb/" style="color:rgb(122, 196, 223)" target="_blank" ref="noopener noreferrer">Open Source Framework (OSF)</a>
                    website, where
                    the data files that correspond to the video files are located. To find the correct files, look
                    for the folder with the same name as the files downloaded from Databrary. Once you have located
                    these files, either download the zip file, or copy the link to the zip download. Ignore the
                    DS_Store file and the processedGaze folder (if applicable), and upload all the other files. Once
                    both of these upload tasks have been done, you will be able to proceed to the viewer. </p>
                    </div>
                </div>
            </div>
            </div>
  </body>
</html>
</template>

<style>
  /*Matt used a decent amount of Leon's code that he wrote for the login page for this
stylesheet, modifying it to conform for the file upload pages*/

  /*Some of these classes are borrowed from a tutorial found here: https://github.com/AsmrProg-YT/Modern-Login*/

  @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap');

  *{
    font-family: 'Montserrat', sans-serif;
  }

  .title_container {
    display: flex;
    align-items: center;
    justify-content: left;
  }

  .h1 {
    color: white;
    font-weight: lighter;
    font-size: 70px;
    text-indent: 10px;
    /*margin-top: 15px;*/
    font-family: "Courier New", Courier, monospace;
  }

  .h2 {
    color: white;
    font-weight: bold;
    text-indent: 10px;
    text-align: center;
    font-family: "Courier New", Courier, monospace;
  }

  .h3 {
    color: #222287;
    font-weight: bold;
    font-size: 20px;
    text-align: center;
    font-family: "Courier New", Courier, monospace;
  }

  .subtitle {
    color: rgb(122, 196, 223);
    font-size: 20px;
    margin-top: -50px;
    text-indent: 150px;
    font-family: "Courier New", Courier, monospace;
  }

  .h1_title {
    color: #222287;
    font-weight: bold;
    font-size: 50px;
    /*text-indent: 10px;*/
    text-align: center;
    /*margin-top: 15px;*/
    font-family: 'Montserrat', sans-serif;
  }

  .paragraph {
    text-align: center;
    color: white;
    text-indent: 20px;
    padding-left: 20px;
    padding-right: 20px;
  }

  .infoblock1 {
    background-color: #222287;
    margin-left: 200px;
    margin-right: 200px;
    margin-top: 20px;
    margin-bottom: 50px;
    border: 5px solid #07062b;
    border-radius: 50px 50px 50px 50px;
  }

  .infoblock2 {
    background-color: #222287;
    margin-left: 200px;
    margin-right: 200px;
    margin-top: 50px;
    margin-bottom: 50px;
    border: 5px solid #07062b;
    border-radius: 50px 50px 50px 50px;
  }

  .back_button {
    background-color: #222287;
    color: #ffffff;
    border: 5px solid #07062b;
    border-radius: 10px;
    position: absolute;
    left: 46%;
    font-family: 'Montserrat', sans-serif;
    font-weight: bold;
    font-size: 30px;
    min-height: 40px;
    min-width: 80px;
  }

  p {
    line-height: 1;
  }

  .back_button:hover{
    color: rgb(122, 196, 223);
  }

  .back_button:active{
    background-color: #8ca8cc79;
  }

  .enter_button {
    background-color: #222287;
    color: #ffffff;
    border: 1px solid transparent;
    border-radius: 10px;
    position: relative;
    font-family: 'Montserrat', sans-serif;
    font-weight: bold;
    font-size: 30px;
    min-height: 40px;
    min-width: 80px;
  }

  .enter_button:hover{
    color: rgb(122, 196, 223);
  }

  .enter_button:active{
    background-color: #8ca8cc79;
  }

  .upload-container-text {
    color: #222287;
    font-weight: bold;
    text-indent: 10px;
    text-align: center;
    font-family: 'Montserrat', sans-serif;
  }

  .fail-text {
    text-align: center;
    color: red;
    font-weight: bold;
    font-family: 'Montserrat', sans-serif;
    padding-left: 10px;
    padding-right: 10px;
  }

  .success-text {
    text-align: center;
    color: greenyellow;
    font-weight: bold;
    font-size: 30px;
    font-family: "Courier New", Courier, monospace;
    padding-left: 10px;
    padding-right: 10px;
  }

  .vedb_img {
    border: 5px solid #ffffff;
    background-color: #ffffff;
    border-radius: 25px;
    max-width: 100%;
    max-height:100%;
    margin: 10px;
  }

  .logoutbutton {
    background-color: #222287;
    color: #ffffff;
    border: 5px solid #07062b;
    border-radius: 10px;
    font-family: "Courier New", Courier, monospace;
    font-weight: bold;
    font-size: 30px;
    min-height: 40px;
    min-width: 80px;
    margin-left: 120px;
  }

  .logoutbutton:hover{
    color: rgb(122, 196, 223);
  }

  .logoutbutton:active{
    background-color: #8ca8cc79;
  }

  .different_files_button{
    display: block;
    margin: auto;
  }

  .bottom_container{
    flex-direction: column;
    display: flex;
    column-gap: 0px;
    align-items: center;
    justify-content: center;
    width: 100%;
    overflow: hidden;
  }

  body{
    background-color: #8ca8cc79;
    background: linear-gradient(to right, #e2e2e2, #8ca8cc79);
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    /*height: 100vh;*/
  }

  .upload-container{
    background-color: #ffffff;
    border-radius: 30px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
    position: relative;
    overflow: hidden;
    width: 760px;
    max-width: 100%;
    min-height: 480px;
    margin: 50px;
  }

  .upload-form-container{
    position: absolute;
    top: 0;
    height: 100%;
    left: 0;
    width: 50%;
    z-index: 2;
    align-items: center;
    display: flex;
    justify-content: center;
    flex-direction: column;
    padding: 0 40px;
  }

  .description-container{
    position: absolute;
    top: 0;
    left: 50%;
    width: 50%;
    height: 100%;
    overflow: hidden;
    border-radius: 150px 0 0 100px;
    z-index: 1000;
  }

  .description{
    background-color: #222287;
    height: 100%;
    background: linear-gradient(to right, #2C2CB0, #222287);
    color: #ffffff;
    position: relative;
    left: -100%;
    /*height: 100%;*/
    width: 200%;
  }

  .description-area {
    position: absolute;
    width: 50%;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    padding: 0 30px;
    text-align: center;
    top: 0;
    right: 0;
  }
</style>