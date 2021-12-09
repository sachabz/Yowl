<template>
<router-link to="/">Home</router-link>
  <div class="Login">
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
            v-model="name"
            type="name"
            name="name"
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
            placeholder="Identifiant"
            required
          />
          <input
            v-model="email"
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
            v-model="password"
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
            placeholder="Mot de passe"
            required
          />
          <input
            v-model="password_confirmation"
            type="password"
            name="confirmPassword"
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
            placeholder="Confirmation"
            required
          />
          <div class="flex items-start mb-6">
            <div class="flex items-center h-5">
              <input
                id="mentionslegales"
                aria-describedby="mentionslegales"
                type="checkbox"
                class="
                  bg-gray-50
                  border-gray-300
                  focus:ring-3 focus:ring-blue-300
                  h-4
                  w-4
                  rounded
                "
                required
              />
            </div>
            <div class="text-sm ml-3">
              <label for="mentionslegales" class="font-medium text-gray-900"
                >J’accepte les mentions légales de YOWL</label
              >
            </div>
          </div>
          <div class="flex items-start mb-6">
            <div class="flex items-center h-5">
              <input
                id="ageminimum"
                aria-describedby="ageminimum"
                type="checkbox"
                class="bg-gray-50
                      border-gray-300
                      focus:ring-3 focus:ring-blue-300
                      h-4
                      w-4
                      rounded"
                required
              />
            </div>
            <div class="text-sm ml-3">
              <label for="ageminimum" class="font-medium text-gray-900">Je reconnais avoir plus de 13 ans</label>
            </div>
          </div>
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
            @click="signin"
          >
            <span>Connexion</span>
          </button>
        </form>
      </div>
    </div>
    <div class="block">
      <router-link to="/login">
        <p class="text-gray-400 underline hover:text-gray-500 text-center">
          Déjà inscrit ? C’est par là !
        </p>
      </router-link>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src

const axios = require('axios');

export default {
  name: "Register",
  components: {},
  data: () => {
    return {
      name: "",
      email: "",
      password: "",
      password_confirmation: "",
    };
  },
  methods: {
    signin(event){
      event.preventDefault()
      axios.post('http://localhost:8000/api/inscription', {
        name: this.name,
        email: this.email,
        password: this.password,
        password_confirmation: this.password_confirmation
      })
      .then((response) => {
        console.log(response.data);
        var result = response.data;
        if (result != null){
          alert("Utilisateur bien créé!")
        }
      })
      .catch((error) => {
        console.log(error);
      }),
        axios.get('http://localhost:8000/api/user', {      
      })
      .then((response) => {
        console.log(response.data);
      })
      .catch((error) => {
        console.log(error);
      })
    },
  }
};
</script>