import React, { useState } from 'react';
import { View, Text, TextInput, Button, StyleSheet, Alert } from 'react-native';

export default function App() {
  const [name, setName] = useState('');
  const [year, setYear] = useState('');
  const [quantity, setQuantity] = useState('');
  const [products, setProducts] = useState([]);

  const handleSubmit = () => {

    // Empty field validation
    if (!name) {
      Alert.alert('Error', 'Device Name is missing');
      return;
    }
    if (!year) {
      Alert.alert('Error', 'Manufacturing Year is missing');
      return;
    }
    if (!quantity) {
      Alert.alert('Error', 'Quantity is missing');
      return;
    }

    // Number validation
    if (isNaN(year)) {
      Alert.alert('Error', 'Manufacturing Year must be a number');
      return;
    }
    if (isNaN(quantity)) {
      Alert.alert('Error', 'Quantity must be a number');
      return;
    }

    // Add to list
    const newProduct = { name, year, quantity };
    setProducts([...products, newProduct]);

    // Clear inputs
    setName('');
    setYear('');
    setQuantity('');
  };

  return (
    <View style={styles.container}>

      {/* LEFT SIDE FORM */}
      <View style={styles.form}>
        <Text style={styles.heading}>Bharat Yug - Add Product</Text>

        <TextInput
          placeholder="Device Name"
          style={styles.input}
          value={name}
          onChangeText={setName}
        />

        <TextInput
          placeholder="Manufacturing Year"
          style={styles.input}
          value={year}
          onChangeText={setYear}
        />

        <TextInput
          placeholder="Quantity"
          style={styles.input}
          value={quantity}
          onChangeText={setQuantity}
        />

        <Button title="Submit" onPress={handleSubmit} />
      </View>

      {/* RIGHT SIDE LIST */}
      <View style={styles.list}>
        <Text style={styles.heading}>Product List</Text>

        {products.map((item, index) => (
          <Text key={index} style={styles.item}>
            {item.name} | {item.year} | {item.quantity}
          </Text>
        ))}
      </View>

    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: 'row',
    padding: 10,
  },
  form: {
    flex: 1,
    padding: 10,
  },
  list: {
    flex: 1,
    padding: 10,
    backgroundColor: '#f2f2f2',
  },
  heading: {
    fontSize: 16,
    fontWeight: 'bold',
    marginBottom: 10,
  },
  input: {
    borderWidth: 1,
    marginBottom: 10,
    padding: 8,
  },
  item: {
    marginBottom: 5,
  },
});
