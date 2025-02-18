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
        const path = 'http://localhost:8080/';
        axios.get(path)
          .then((res) => {
            this.msg = res.data;
          })
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
  <div class="container">
    <p>Homepage</p>
      <button type="button" class="btn btn-primary">{{ msg }}</button>
      <router-link to="/fileupload">File Upload</router-link>
  </div>
</template>

<style scoped>

</style>
