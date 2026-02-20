import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/features/applications/domain/application.dart';
import '../viewmodels/applications_view_model.dart';

class ApplicationFormView extends ConsumerStatefulWidget {
  const ApplicationFormView({super.key});

  @override
  ConsumerState<ApplicationFormView> createState() =>
      _ApplicationFormViewState();
}

class _ApplicationFormViewState extends ConsumerState<ApplicationFormView> {
  final _formKey = GlobalKey<FormState>();
  final _companyCtrl = TextEditingController();
  final _positionCtrl = TextEditingController();
  final _salaryCtrl = TextEditingController();

  EmploymentType _employmentType = EmploymentType.clt;
  LocationScope _locationScope = LocationScope.national;

  @override
  void dispose() {
    _companyCtrl.dispose();
    _positionCtrl.dispose();
    _salaryCtrl.dispose();
    super.dispose();
  }

  int? _parseSalaryCents(String raw) {
    final t = raw.trim();
    if (t.isEmpty) return null;

    // aceita "5000" ou "5.000" ou "5,000"
    final digits = t.replaceAll(RegExp(r'[^0-9]'), '');
    if (digits.isEmpty) return null;

    // interpretamos como "reais" inteiros (sem centavos por enquanto)
    final value = int.parse(digits);
    return value * 100;
  }

  Future<void> _submit() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    final salaryCents = _parseSalaryCents(_salaryCtrl.text);

    await ref
        .read(applicationsViewModelProvider.notifier)
        .createApplication(
          companyName: _companyCtrl.text.trim(),
          positionTitle: _positionCtrl.text.trim(),
          employmentType: _employmentType,
          locationScope: _locationScope,
          salaryCents: salaryCents,
        );

    if (!mounted) return;
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final vm = ref.read(applicationsViewModelProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text('Nova candidatura')),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _companyCtrl,
                        decoration: const InputDecoration(
                          labelText: 'Empresa',
                          hintText: 'Ex: Nubank',
                        ),
                        textInputAction: TextInputAction.next,
                        validator: (v) => (v == null || v.trim().isEmpty)
                            ? 'Informe a empresa'
                            : null,
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        controller: _positionCtrl,
                        decoration: const InputDecoration(
                          labelText: 'Cargo',
                          hintText: 'Ex: Flutter Developer',
                        ),
                        textInputAction: TextInputAction.next,
                        validator: (v) => (v == null || v.trim().isEmpty)
                            ? 'Informe o cargo'
                            : null,
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        controller: _salaryCtrl,
                        decoration: const InputDecoration(
                          labelText: 'Salário (opcional)',
                          hintText: 'Ex: 5000',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: DropdownButtonFormField<EmploymentType>(
                              initialValue: _employmentType,
                              decoration: const InputDecoration(
                                labelText: 'Contratação',
                              ),
                              items: EmploymentType.values
                                  .map(
                                    (e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e.name.toUpperCase()),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (v) =>
                                  setState(() => _employmentType = v!),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: DropdownButtonFormField<LocationScope>(
                              initialValue: _locationScope,
                              decoration: const InputDecoration(
                                labelText: 'Localidade',
                              ),
                              items: LocationScope.values
                                  .map(
                                    (e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e.name),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (v) =>
                                  setState(() => _locationScope = v!),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              FilledButton.icon(
                onPressed: vm.createCommand.state.isRunning ? null : _submit,
                icon: vm.createCommand.state.isRunning
                    ? const SizedBox(
                        height: 18,
                        width: 18,
                        child: CircularProgressIndicator(),
                      )
                    : const Icon(Icons.check),
                label: const Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
