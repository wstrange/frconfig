import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'config_store.dart';
import 'dart:html' as html;

class ConfigWidget extends StatefulWidget {
  @override
  _ConfigWidgetState createState() => _ConfigWidgetState();
}

class _ConfigWidgetState extends State<ConfigWidget> {
  final TextEditingController _domainController = TextEditingController();
  final configStore = ConfigStore();

  @override
  initState() {
    super.initState();
  }

  dispose() {
    configStore.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),

      //mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: <Widget>[
        //_domainSettings(),
        _domainSettings(),
        _ctsSettings(),
        MaterialButton(
          child: Text("Generate Kustomization"),
          onPressed: _download,
          color: Colors.blue,
        ),
        MaterialButton(
          child: Text("validate"),
          onPressed: _validate,
        ),
      ],
    );
  }

  Widget _domainSettings() {
    return _SectionDisplay("Domain Settings:", <Widget>[
      Observer(
        builder: (_) => TextFormField(
            initialValue: configStore.domain,
            onChanged: (value) => configStore.domain = value,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              hintText: "example.com",
              labelText: "Top level domain",
            )),
      ),
      Observer(
          builder: (_) => TextFormField(
              initialValue: configStore.fqdn,
              onChanged: (value) => configStore.fqdn = value,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                hintText: "default.iam.example.com",
                labelText: "Fully Qualifed Domain",
              ))),
    ]);
  }

  Widget _ctsSettings() {
    return _SectionDisplay(
      "CTS Settings",
      <Widget>[
        Observer(
          builder: (_) => Row(children: <Widget>[
            Container(
              child: Text(
                "Memory size:",
              ),
              width: 90.0,
            ),
            Slider(
                min: 0.5,
                max: 32.0,
                value: configStore.ctsMemoryGB,
                label: "Memory",
                onChanged: (x) => configStore.ctsMemoryGB = x),
            Text('${configStore.ctsMemoryGB.toStringAsFixed(1)} GB')
          ]),
        ),
        Observer(
          builder: (_) => Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(child: Text("Disk Size:"), width: 90.0),
                Slider(
                    min: 2.0,
                    max: 10000.0,
                    divisions: 100,
                    label: "Disk",
                    value: configStore.ctsDiskSizeGB,
                    onChanged: (x) => configStore.ctsDiskSizeGB = x),
                Text('${configStore.ctsDiskSizeGB.toInt()} GB')
              ]),
        ),
      ],
    );
  }

  _doStuff() async {
    var win = await html.window.open("#local", "local");
  }

  _validate() {
    print("Configstore ${configStore.domain}");
    print("Memory ${configStore.ctsMemoryGB}");
  }

  _download() async {
    var elem = html.document.createElement("a");
    var text = Uri.encodeComponent("foo: 'bar'\nblah: 3");
    elem.setAttribute("href", 'data:text/plain;charset=utf-8,' + text);
    elem.setAttribute("download", "foo.yaml");
    elem.style.display = 'none';
    html.document.body.append(elem);
    elem.click();
    elem.remove();
  }
}

// Display a section -with a nice box and
class _SectionDisplay extends StatelessWidget {
  final String sectionHeader;
  final List<Widget> widgets;

  _SectionDisplay(this.sectionHeader, this.widgets);

  // Trick from: https://github.com/flutter/flutter/issues/16957#issuecomment-558878770
  // Add padding to a list of widgets
  List<Widget> _padRow(double gap, Iterable<Widget> children) => children
      .expand((item) sync* {
        yield SizedBox(height: gap);
        yield item;
      })
      .skip(1)
      .toList();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.all(5.0),
        //width: 300.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.blueGrey, spreadRadius: 3),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(sectionHeader),
            Divider(),
            ..._padRow(10.0, widgets)
          ],
        ));
  }
}
