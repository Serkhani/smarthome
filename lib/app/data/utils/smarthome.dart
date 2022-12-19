import 'package:smarthome/app/data/utils/room.dart';

class SmartHome {
  final List<Room> rooms;
  const SmartHome({required this.rooms});

  void removeRoom(int index) {
    rooms.removeAt(index);
  }

  Room findRoom(int index) {
    return rooms[index];
  }

  void addRoom(Room room) {
    rooms.add(room);
  }
}
