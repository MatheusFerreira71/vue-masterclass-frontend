<script setup lang='ts'>

</script>

<template>
  <h1>Projects View</h1>
  <RouterLink :to="{ name: '/' }">Go to Home</RouterLink>
  <RouterLink :to="{ name: '/projects/[id]', params: { id: 1 } }">Go to Project 1</RouterLink>
</template>

<style scoped></style>
