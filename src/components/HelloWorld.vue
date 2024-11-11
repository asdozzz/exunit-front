<script setup>
import { ref } from 'vue'

defineProps({
  msg: String,
})

const count = ref(0)
const title = import.meta.env.VITE_APP_TITLE
const test_list = import.meta.env.VITE_APP_TEST_LIST
</script>

<template>
  <h2>001</h2>
  <h1>####   {{ title }} / {{test_list}}   #</h1>
</template>

<style scoped>
.read-the-docs {
  color: #888;
}
</style>
