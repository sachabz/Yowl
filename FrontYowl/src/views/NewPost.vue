<template>
  <div class="NewPost">
    <router-link to="/">Home</router-link>
    <div class="block">
      <div class="flex justify-center items-center">
        <form
          class="
            p-10
            bg-green-50
            rounded
            flex
            justify-center
            items-center
            flex-col
            shadow-md
          "
        >
          <img src="../assets/LogoYowl.png" class="mb-6" />
          <input
            v-model="titre"
            name="title"
            class="
              mb-5
              p-3
              w-80
              focus:border-purple-700
              rounded
              border-2
              outline-none
            "
            autocomplete="off"
            placeholder="Titre"
            required
          />
          <input
            name="Auteur"
            v-model="auteur"
            class="
              mb-5
              p-3
              w-80
              focus:border-purple-700
              rounded
              border-2
              outline-none
            "
            autocomplete="off"
            placeholder="Auteur"
          />
          <input
            name="theme"
            v-model="theme"
            class="
              mb-5
              p-3
              w-80
              focus:border-purple-700
              rounded
              border-2
              outline-none
            "
            autocomplete="off"
            placeholder="Thématqiue"
          />
          <textarea
            v-model="contenu"
            class="
              w-full
              mb-5
              p-3
              text-gray-700
              focus:border-purple-700
              rounded
              border-2
              outline-none
            "
            rows="4"
            placeholder="Description du post"
            required
          ></textarea>

          <input
            name="url"
            class="
              mb-5
              p-3
              w-80
              focus:border-purple-700
              rounded
              border-2
              outline-none
            "
            autocomplete="off"
            placeholder="Source"
          />
            <input
            v-model="date"
            name="date"
            class="
              mb-5
              p-3
              w-80
              focus:border-purple-700
              rounded
              border-2
              outline-none
            "
            autocomplete="off"
            placeholder="Date"
          />
          <button
            class="
              bg-red-500
              hover:bg-red-400
              text-white
              font-bold
              p-2
              rounded
              w-80
            "
            id="poster"
            type="submit"
            @click="poster"
          >
            <span>Poster</span>
          </button>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
const axios = require("axios");

export default {
  name: "NewPost",
  components: {},
  data: () => {
    return {
      titre: "",
      theme: "",
      auteur: "",
      date: "",
      contenu: "",
    };
  },
  methods: {
    poster(event) {
      event.preventDefault();
      axios.post("http://localhost:8000/api/post", {
          titre: this.titre,
          theme: this.theme,
          auteur: this.auteur,
          date: this.date,
          contenu: this.contenu,
        })
        .then((response) => {
          console.log(response.data);
          var result = response.data;
          if (result != null) {
            alert("Post bien créé!");
          }
        })
        .catch((error) => {
          console.log(error);
        }),
        axios
          .get("http://localhost:8000/api/post", {})
          .then((response) => {
            console.log(response.data);
          })
          .catch((error) => {
            console.log(error);
          });
    },
  },
};
</script>
