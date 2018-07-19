<template>
  <ul>
    <segmentLi v-for="segment in segments"
      :segment="segment"
      :key="segment.id"></segmentLi>
  </ul>
</template>

<script>

import segmentLi from './SegmentLi.vue'

export default {
  name: "segmentList",
  props: ["segments"],
  components: {
    segmentLi
  }
}
</script>

<style lang="scss">
</style>
