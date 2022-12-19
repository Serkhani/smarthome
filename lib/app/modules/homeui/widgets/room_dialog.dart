import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/utils/room.dart';
import '../../../data/utils/sensor_types.dart';

class RoomDialog extends StatelessWidget {
  final Room? room;
  const RoomDialog({
    required this.room,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          ListTile(
            title: const Text('Light: '),
            trailing: Switch(
              value: room!.lightIsOn.value,
              onChanged: (value) => room!.toggleLight(),
            ),
          ),
          ListTile(
            title: const Text('Door'),
            trailing: Switch(
                value: room!.doorIsOpen.value,
                onChanged: (value) => room!.toggleDoor()),
          ),
          ListTile(
            title: const Text('Temp: '),
            trailing: Text(
                '${room!.findSensor(SensorType.temperatureSensor)!.value}K'),
          ),
          ListTile(
            title: const Text('Smoke Detector: '),
            trailing: Text('${room!.findSensor(SensorType.gasSensor)!.value}'),
          ),
        ],
      ),
    );
  }
}
