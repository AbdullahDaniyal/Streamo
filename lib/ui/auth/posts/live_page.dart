import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class LivePage extends StatefulWidget {
  const LivePage({super.key});

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  AgoraClient client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
          appId: "fda097a42a8242ca9a2626b22502f289", channelName: "test"),
      enabledPermission: [
        Permission.camera,
        Permission.microphone,
      ]);

  @override
  void initState() {
    super.initState();
    client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Live Page'),
        ),
        body: Stack(
          children: [
            AgoraVideoViewer(client: client),
            AgoraVideoButtons(client: client),
          ],
        ));
  }
}


// fda097a42a8242ca9a2626b22502f289