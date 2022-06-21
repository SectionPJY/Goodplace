//This example uses 'templatecolumn' for 'Age' and 'Fare' columns.
var ctx = document.getElementById("myreservationChart");
Ext.define('MyApp.view.main.Main', {
  extend: 'Ext.grid.Panel',  
  store: {
    model: 'Ext.data.Model',
    data: getData()
  },
  title: 'Reservation Chart',
  padding: '5 0 5 0',
  columns: [{
    xtype: 'datecolumn',
    format: 'F j, Y',
    text: 'Date',
    flex: 1,
    dataIndex: 'date', 
  }, {
    text: 'PNR No.',
    width: 110,
    dataIndex: 'pnr', 
  }, {
    text: 'Name',
    width: 80,
    dataIndex: 'name'
  }, {
    xtype: 'templatecolumn',
    tpl: '{age} yrs',
    text: 'Age',
    width: 70,
    dataIndex: 'age'
  }, {
    text: 'Sex',
    width: 50,
    dataIndex: 'sex'
  }, {
    xtype: 'booleancolumn',
    trueText: 'Yes',
    falseText: 'No',
    text: 'Food',
    width: 60,
    dataIndex: 'food'
  }, {  
    text: 'Seat No.',
    width: 80,
    dataIndex: 'seat'
  }, {
    text: 'Status',
    width: 70,
    dataIndex: 'status'
  }, {
    xtype: 'templatecolumn',
    tpl: '{fare:usMoney()}',
    text: 'Fare',
    width: 90,
    dataIndex: 'fare'
  }]
});

Ext.application({
  name: 'MyApp',
  mainView: 'MyApp.view.main.Main'
});

function getData() {
  return [{
    date: "11/03/2017",
    pnr: 2134567890, 
    name : "Bob", 
    age : 23,
    sex : "M",
    food: false,
    seat: "A1-1",
    status: "Confirm",
    fare: 50
  }, {
    date: "11/03/2017",
    pnr: 2134567891, 
    name : "Suzy",  
    age : 32,
    sex : "F",
    food: true,
    seat: "A1-2",
    status:"Confirm",
    fare: 50
  }, {
    date: "11/03/2017",
    pnr: 2134567892, 
    name : "Tom", 
    age : 34,
    sex : "M",
    food: false,
    seat: "A1-3",
    status:"Confirm",
    fare: 30
  }, {
    date: "11/03/2017",
    pnr: 2134567893, 
    name : "Peter", 
    age : 27,
    sex : "M",
    food: true,
    seat: "A1-4",
    status:"Confirm",
    fare: 55
  }, {
    date: "11/03/2017",
    pnr: 2134567894, 
    name : "Mary", 
    age : 38,
    sex : "F",
    food: true,
    seat: "A2-1",
    status:"Confirm",
    fare: 25
  }, {
    date: "11/03/2017",
    pnr: 2134567895, 
    name : "Lisa", 
    age : 30,
    sex : "F",
    food: false,
    seat: "A2-2",
    status:"RAC",
    fare: 22
  }, {
    date: "11/03/2017",
    pnr: 2134567896, 
    name : "Adam", 
    age : 23,
    sex : "M",
    food: false,
    seat: "A2-3",
    status:"Confirm",
    fare: 22
  }, {
    date: "11/03/2017",
    pnr: 2134567897, 
    name : "Dev", 
    age : 40,
    sex : "M",
    food: false,
    seat: "A2-4",
    status:"Confirm",
    fare: 25
  }, {
    date: "11/03/2017",
    pnr: 2134567898, 
    name : "Danny", 
    age : 31,
    sex : "M",
    food: false,
    seat: "A2-5",
    status:"RAC",
    fare: 25
  }, {
    date: "11/03/2017",
    pnr: 2134567899,
    name : "Pam", 
    age : 33,
    sex : "M",
    food: false,
    seat: "A2-6",
    status:"Confirm",
    fare: 20
  }];
}