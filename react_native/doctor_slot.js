import React, { useState } from 'react';
import { View, Text, Button, Alert, TouchableOpacity } from 'react-native';

const App = () => {
  const [doctor, setDoctor] = useState('');
  const [time, setTime] = useState('');

  const doctors = ['Dr. Sharma', 'Dr. Mehta', 'Dr. Rao'];
  const slots = ['10:00 AM', '12:00 PM', '3:00 PM'];

  const submitAppointment = () => {
    if (!doctor || !time) {
      Alert.alert("Error", "Select doctor and time");
      return;
    }

    Alert.alert(
      "Appointment Confirmed",
      `Doctor: ${doctor}\nTime: ${time}`
    );
  };

  return (
    <View style={{ padding: 20, marginTop: 50 }}>

      <Text>Select Doctor:</Text>
      {doctors.map((d) => (
        <TouchableOpacity
          key={d}
          style={{ padding: 10, backgroundColor: '#ddd', margin: 5 }}
          onPress={() => setDoctor(d)}
        >
          <Text>{d}</Text>
        </TouchableOpacity>
      ))}

      <Text>Select Time Slot:</Text>
      {slots.map((t) => (
        <TouchableOpacity
          key={t}
          style={{ padding: 10, backgroundColor: '#ddd', margin: 5 }}
          onPress={() => setTime(t)}
        >
          <Text>{t}</Text>
        </TouchableOpacity>
      ))}

      <Button title="Book Appointment" onPress={submitAppointment} />

    </View>
  );
};

export default App;
