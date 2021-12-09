<template>
  <nav class="bg-green-50 shadow-lg">
    <div class="max-w-6xl mx-auto px-4">
      <div class="flex justify-between">
        <div class="flex space-x-7">
          <div>
            <a href="#" class="flex items-center py-4 px-2">
              <router-link to="/">
              <img
                src="../assets/LogoYowl.png"
                alt="Logo"
                class="mr-2 min-w-5 max-w-7"
              />
              </router-link>
              <!-- <span class="font-semibold text-gray-500 text-lg">Navigation</span> -->
            </a>
          </div>
          <!-- Primary Navbar items -->
          <div class="hidden md:flex items-center space-x-1">
            <router-link
              to="/NewPost"
              class="
                py-4
                px-2
                text-red-500
                border-b-4 border-red-500
                font-semibold
              "
              >Nouveau post</router-link>
          </div>
        </div>
        <!-- Search -->
        <div class="hidden md:flex items-center space-x-1 w-1/2">
          <div
            class="
              relative
              flex
              w-full
              flex-wrap
              items-stretch
              mb-3
              mt-3
              ml-5
              mr-5
            "
          >
            <span
              class="
                z-10
                h-full
                leading-snug
                font-normal
                absolute
                text-center text-gray-400
                bg-transparent
                rounded
                text-base
                items-center
                justify-center
                w-8
                pl-3
                py-2.5
              "
            >
              <i class="fas fa-search"></i>
            </span>
            <input
              type="text"
              placeholder="Search"
              class="
                px-3
                py-3
                placeholder-gray-400
                text-gray-600
                relative
                bg-white
                rounded-full
                text-sm
                border border-gray-400
                outline-none
                focus:outline-none focus:ring
                h-10
                pl-10
                w-full
              "
            />
          </div>
        </div>

					<!-- Début logué -->
					<div class="hidden md:flex items-center space-x-3 " >
						<div class="hoverable">
							<a href="#" class="">
								<router-link to="/Profil">
                <img
                    class="w-16 h-16 object-cover rounded-full"
                    src="//images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
                    alt="Avatar"
                />
                </router-link>

							</a>
              <div class="p-6 mega-menu rounded-lg max-w-md mx-auto mb-16 sm:mb-0 shadow-xl bg-red-500">
                <div class="container mx-auto flex flex-wrap justify-between">
                  <div class="w-full text-white mb-8 text-left">
                    <h2 class="font-bold text-2xl">Mon nom</h2>
                    <li class="text-white !important"><a href="#" class="hover:underline text-white !important" style="color: #ffffff;">Ajouter un nouveau message</a></li>
                    <li><a href="#" class="hover:underline text-white" style="color: #ffffff;">Supprimer mon compte</a></li>
                    <li><a href="#" class="text-white hover:underline" style="color: #ffffff;">Supprimer mon compte</a></li>
                  </div>
                </div>
              </div>
            </div>
					</div>
          <!-- Fin logué -->


        
        <!-- Mobile -->
        <div class="md:hidden flex items-center">
          <button class="outline-none mobile-menu-button">
            <svg
              class="w-6 h-6 text-gray-500 hover:text-red-500"
              x-show="!showMenu"
              fill="none"
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              viewBox="0 0 24 24"
              stroke="currentColor"
            >
              <path d="M4 6h16M4 12h16M4 18h16"></path>
            </svg>
          </button>
        </div>
      </div>
    </div>
    <!-- mobile menu -->
    <div class="hidden mobile-menu">
      <ul class="">
        <li class="active">
          <a
            href="index.html"
            class="block text-sm px-2 py-4 text-white bg-red-500 font-semibold"
            >Home</a
          >
        </li>
        <li>
          <a
            href="#services"
            class="
              block
              text-sm
              px-2
              py-4
              hover:bg-red-500
              transition
              duration-300
            "
            >Services</a
          >
        </li>
        <li>
          <a
            href="#about"
            class="
              block
              text-sm
              px-2
              py-4
              hover:bg-red-500
              transition
              duration-300
            "
            >About</a
          >
        </li>
        <li>
          <a
            href="#contact"
            class="
              block
              text-sm
              px-2
              py-4
              hover:bg-red-500
              transition
              duration-300
            "
            >Contactez-nous</a
          >
        </li>
      </ul>
    </div>
  </nav>
</template>


<script>
export default {
  name: "HeaderLogged",
  props: {},
  data: () => {
    return {

    }
  },
};

// const btn = document.querySelector("button.mobile-menu-button");
// const menu = document.querySelector(".mobile-menu");

// btn.addEventListener("click", () => {
//   menu.classList.toggle("hidden");
// });
</script>


<style>

.mega-menu {
display: none;
right: 10px;
position: absolute;
}


.hoverable {
position: static;
}
.hoverable:hover .mega-menu {
display: block;
}


.toggleable > label:after {
content: "\25BC";
font-size: 10px;
padding-left: 6px;
position: relative;
top: 1px;
}

.toggle-input {
display: none;
}
.toggle-input:not(checked) ~ .mega-menu {
display: none;
}

.toggle-input:checked ~ .mega-menu {
display: block;
}

.toggle-input:checked + label {
color: white;
background: #2c7c82; /*@apply bg-red-800 */
}

.toggle-input:checked ~ label:after {
content: "\25B2";
font-size: 10px;
padding-left: 6px;
position: relative;
top: -1px;
}

</style>