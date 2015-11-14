import QtQuick 2.0
import QtPositioning 5.4
import QtLocation 5.4

Item {
  PositionSource {
      active: true
      onPositionChanged: {
          console.log(position.coordinate);
      }
  }

  Map {
     id: map
     anchors.fill: parent
     plugin: Plugin { name: "osm" }
     center: QtPositioning.coordinate(59.930243, 10.714635)
     zoomLevel: 15
  }

}

