<template>
  <div class="home">
    <Header v-if="this.token == null" />
    <HeaderLogged v-if="this.token != null" />

    <Post class="justify-center items-center m-4" v-for="(post, index) in posts" v-bind:key="post.id" v-bind:titre="post.titre" v-bind:theme="post.theme" v-bind:date="post.date" v-bind:auteur="post.auteur" v-bind:contenu="post.contenu" @click="detail(index)" />
  </div>
</template>

<script>
// @ is an alias to /src
import Post from "@/components/Post.vue";
import Header from "@/components/Header.vue";
import HeaderLogged from "@/components/HeaderLogged.vue";
const axios = require('axios');
export default {
  name: "Home",
  components: {
    Post,
    Header,
    HeaderLogged,
  },
  data: () => {
    return {
      posts: "",
      token: "",
    };
  },
  mounted() {
    this.token = localStorage.getItem('myToken');
    console.log(this.token);
    axios.get('http://localhost:8000/api/post')
      .then((response) => {
        console.log(response.data);
        this.posts = response.data;
      })
      .catch((error) => {
        console.log(error);
      })
  },
  methods: {
    detail(index) {
      var PostViewId = this.posts[index].id;
      var PostViewTitre = this.posts[index].titre;
      var PostViewTheme = this.posts[index].theme;
      var PostViewAuteur = this.posts[index].auteur;
      var PostViewDate = this.posts[index].date;
      var PostViewContenu = this.posts[index].contenu;
      localStorage.setItem('id',PostViewId);
      localStorage.setItem('titre',PostViewTitre);
      localStorage.setItem('theme',PostViewTheme);
      localStorage.setItem('auteur',PostViewAuteur);
      localStorage.setItem('date',PostViewDate);
      localStorage.setItem('contenu',PostViewContenu);
      this.$router.push("/PostView");
    },
  }
};
</script>