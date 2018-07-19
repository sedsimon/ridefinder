<template>
  <li :title="segment.title">
    <div class="marker-icon" style="background-position: 0px 0px;"></div>
    <div class="info">
      <div class="seg-name">{{segment.name}}</div>
      <div>
        <span>{{segment.distance}} {{segment.distanceUnit}}</span>
        <span>{{segment.gradient}}%</span>
      </div>
    </div>
    <div class="clear"></div>
  </li>
</template>

<script>

/*
  <ul class="">
    <li title="Prospect Point Climb">
      <div class="marker-icon" style="background-position: 0px 0px;"></div>
      <div class="info">
        <div class="seg-name">Prospect Point Climb</div>
        <div>
          <span>1.2 km</span>
          <span>4.2%</span>
        </div>
      </div>
      <div class="clear"></div>
    </li>
  </ul>
*/
export default {
  name: "segmentLi",
  props: ["segment"]
}
</script>

<style lang="scss">
</style>
