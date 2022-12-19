import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoomDialog extends StatelessWidget {
  final RxBool doorIsOpen;
  final RxBool ligthIsOn;
  final RxDouble temp;
  final RxDouble smoke;
  final void Function(bool) onDoorChanged;
  final void Function(bool) onLightChanged;
  const RoomDialog({
    required this.temp,
    required this.ligthIsOn,
    required this.doorIsOpen,
    required this.onLightChanged,
    required this.onDoorChanged,
    required this.smoke,
    super.key,
  });
// temp, light, door, gas
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Light: '),                
          trailing: Switch(value: ligthIsOn.value, onChanged: onLightChanged),
        ),
        ListTile(
          title: const Text('Door'),
          trailing: Switch(value: doorIsOpen.value, onChanged: onDoorChanged),
        ),
        ListTile(
          title: const Text('Temp: '),
          trailing: Text('${temp.value}K'),
        ),
        ListTile(
          title: const Text('Smoke Detector: '),
          trailing: Text('${smoke.value}'),
        ),
      ],
    );
  }
}
