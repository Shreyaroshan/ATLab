import React, { useState } from 'react';
import { View, Text, Switch, StyleSheet, Alert } from 'react-native';

export default function App() {

  const [devices, setDevices] = useState([
    { name: 'Light', status: false },
    { name: 'Fan', status: false },
    { name: 'AC', status: false },
    { name: 'TV', status: false },
  ]);

  const toggleSwitch = (index) => {
    const updatedDevices = [...devices];
    updatedDevices[index].status = !updatedDevices[index].status;

    setDevices(updatedDevices);

    // Show alert
    Alert.alert(
      'Device Status',
      `${updatedDevices[index].name} is ${updatedDevices[index].status ? 'ON' : 'OFF'}`
    );
  };

  return (
    <View style={styles.container}>
      <Text style={styles.heading}>Smart Home Devices</Text>

      {devices.map((item, index) => (
        <View key={index} style={styles.row}>
          <Text style={styles.device}>{item.name}</Text>

          <Switch
            value={item.status}
            onValueChange={() => toggleSwitch(index)}
          />
        </View>
      ))}

    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
  },
  heading: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 15,
  },
  row: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginVertical: 10,
  },
  device: {
    fontSize: 16,
  },
});
