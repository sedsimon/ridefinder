<template>
  <div>
    <segmentList :segments="segments"></segmentList>
    <div id="mapid"></div>
  </div>
</template>

<script>
import L from 'leaflet'
import segmentList from "./SegmentList.vue"
import _ from 'underscore'

export default {
  name: 'mymap',


  data: () => {
    return {
      segments: []
    }
  },

  methods: {
    updateSegments: function(bounds) {
      this.segments = _.shuffle([
        {
          id: 1,
          title: "Prospect Point",
          name: "Prospect Point",
          distance: "1.2",
          distanceUnit: "km",
          gradient: "3.2"
        },
        {
          id: 2,
          title: "Camosun Hill",
          name: "Camosun Hill",
          distance: "3.4",
          distanceUnit: "km",
          gradient: "4.0"
        }
      ])
    }
  },

  mounted () {
    // initialize the map
    var mymap = L.map('mapid').setView([49.2927, -123.1207], 13);

    L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/streets-v10/tiles/256/{z}/{x}/{y}?access_token={accessToken}', {
      attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
      maxZoom: 18,
      accessToken: 'pk.eyJ1Ijoic2ltb25zdGFubGFrZSIsImEiOiJjajMyampkcncwMDJiMnducm5wajFlYTJuIn0.FsjoQoqzzeQWF1VWVCHGlA'
    }).addTo(mymap);

    // initialize the segment list
    this.updateSegments(mymap.getBounds())
    // listen for map movement
    mymap.on('moveend',(e) => this.updateSegments(mymap.getBounds()))

  },
  components: {
    segmentList
  }
}


</script>

<style lang="scss">
/**
 * import leaflet and mapbox-gl css files. The '~' means look in the node_modules
 * directory
 */
@import "~leaflet/dist/leaflet.css";
@import "~mapbox-gl/dist/mapbox-gl.css";

#mapid {
  height: 400px;
  width: 600px;
  margin-left: auto;
  margin-right: auto;
}
</style>
