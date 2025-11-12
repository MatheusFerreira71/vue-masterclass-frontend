<script setup lang="ts">
import { supabase } from '@/lib/supabaseClient';

let projects: any[] = [];

(async () => {
  const { data, error } = await supabase.from('projects').select('*');

  if (error) {
    console.error('Error fetching projects:', error);
    return;
  }

  console.log('Projects data:', data);
  projects = data;
})();
</script>

<template>
  <h1>Projects View</h1>
  <RouterLink :to="{ name: '/' }">Go to Home</RouterLink>
  <RouterLink :to="{ name: '/projects/[id]', params: { id: 1 } }">Go to Project 1</RouterLink>
</template>

<style scoped></style>