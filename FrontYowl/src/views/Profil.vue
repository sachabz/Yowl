<template>
  <div>
    <Header />
    <ProfilComponent />
  </div>
</template>



<script>
// @ is an alias to /src
import Header from "@/components/Header.vue";
import ProfilComponent from "@/components/Profil.vue";

export default {
  name: "Profil",
  components: {
    Header,
    ProfilComponent,
  },
};
</script>