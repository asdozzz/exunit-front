<script setup>
import { ref } from 'vue'

defineProps({
  msg: String,
})

const count = ref(0)
const title = import.meta.env.VITE_APP_TITLE
</script>

<template>
  <h1>asd   {{ title }}    asdas</h1>
</template>

<style scoped>
.read-the-docs {
  color: #888;
}
</style>
