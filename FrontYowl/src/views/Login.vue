<template>
  <div class="Login">
    <router-link to="/">Home</router-link>
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
        <img src="../assets/LogoYowl.png" />
        <p class="mb-5 text-3xl uppercase text-gray-600">Connexion</p>
        <input
          v-model="login.email"
          type="email"
          name="email"
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
          placeholder="Email"
          required
        />
        <input
          v-model="login.password"
          type="password"
          name="password"
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
          placeholder="Password"
          required
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
          id="login"
          type="submit"
          @click="login"
        >
          <span>Connexion</span>
        </button>
      </form>
    </div>
    <div class="block">
      <router-link to="/register">
        <p class="text-gray-400 underline hover:text-gray-500 text-center">
          Pas encore inscrit ? C’est par là !
        </p>
      </router-link>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src

const axios = require('axios');

export default {
  name: "Login",
  components: {},
  data: () => {
    return {
      email: "",
      password: "",
    };
  },
  methods: {
    login(event){
      event.preventDefault()
      axios.post('http://localhost:8000/api/connexion', {
        email: this.login.email,
        password: this.login.password,
      })
      .then((response) => {
        console.log(response.data.access_token);
        var token = response.data.access_token;
        localStorage.setItem('myToken', token);
        if (token != null){
          this.$router.push("/");
        }else{
          alert("identifiants incorrects")
        }
      })
      .catch((error) => {
        console.log(error);
      })
    },
  }
};
</script>
