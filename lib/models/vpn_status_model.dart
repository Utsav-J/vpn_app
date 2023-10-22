class VPNStatus {
  String? byteIn;
  String? byteOut;
  String? durationTime;
  String? lastPacketReceived;

  VPNStatus(
      {this.byteIn, this.byteOut, this.durationTime, this.lastPacketReceived});

  factory VPNStatus.fromJson(Map<String, dynamic> jsonData) => VPNStatus(
        byteIn: jsonData['byte_in'],
        byteOut: jsonData['byte_out'],
        durationTime: jsonData['duration'],
        lastPacketReceived: jsonData['last_packet_receive'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> jsonData = {};
    jsonData['byte_in'] = byteIn;
    jsonData['byte_out'] = byteOut;
    jsonData['duration'] = durationTime;
    jsonData['last_packet_received'] = lastPacketReceived;
    return jsonData;
  }
}
