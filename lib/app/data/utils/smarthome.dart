import 'dart:ffi';

import 'package:smarthome/app/data/utils/room.dart';
import 'package:smarthome/app/data/utils/room_types.dart';

class SmartHome {
  final List<Room> rooms;
  const SmartHome({required this.rooms});

  void removeRoom(int index) {
    rooms.removeAt(index);
  }

  Room? findRoom(Rooms type) {
    for (var room in rooms) {
      if (room.type == type) {
        return room;
      }
    }
    return null;
  }

  void addRoom(Room room) {
    rooms.add(room);
  }
}
