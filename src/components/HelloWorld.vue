<script setup>
import { ref } from 'vue'

defineProps({
  msg: String,
})

const count = ref(0)
const title = import.meta.env.VITE_APP_TITLE
const project_title = import.meta.env.VITE_PROJECT_APP_TITLE
const test_list = import.meta.env.VITE_APP_TEST_LIST
</script>

<template>
  <h1>##33##   {{ title }} / {{ project_title }} / {{test_list}}   #####</h1>
  <h2>001</h2>
</template>

<style scoped>
.read-the-docs {
  color: #888;
}
</style>
