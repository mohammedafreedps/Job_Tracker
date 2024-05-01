import 'package:flutter/material.dart';

final List<PopupMenuEntry> jobTypes = [
    const PopupMenuItem(value: 'Remote', child: Text('Remote')),
    const PopupMenuItem(value: 'On-site', child: Text('On-site')),
    const PopupMenuItem(value: 'Hibrid', child: Text('Hibrid'))
];

final List<PopupMenuEntry> applicationStatuses = [
    const PopupMenuItem(value: 'Applied', child: Text('Applied')),
    const PopupMenuItem(value: 'Interview Scheduled', child: Text('Interview Scheduled')),
    const PopupMenuItem(value: 'Rejected', child: Text('Rejected'))
];