import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:job_tracker/features/application/presentation/viewmodels/applications_view_model.dart';

class ApplicationsListView extends ConsumerWidget {
  const ApplicationsListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appsAsync = ref.watch(applicationsViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Candidaturas')),
      body: appsAsync.when(
        data: (apps) {
          if (apps.isEmpty) {
            return const _EmptyState();
          }
          return ListView.separated(
            itemBuilder: (context, index) {
              final a = apps[index];
              return Card(
                elevation: 0,
                child: ListTile(
                  title: Text(a.positionTitle),
                  subtitle: Text(a.companyName),
                  trailing: _StatusChip(label: a.status.name),
                ),
              );
            },
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemCount: apps.length,
            padding: const EdgeInsets.all(16),
          );
        },
        error: (error, stackTrace) => Padding(
          padding: const EdgeInsets.all(16),
          child: Center(child: Text('Erro ao carregar: $error')),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/applications/new'),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Chip(label: Text(label), visualDensity: VisualDensity.compact);
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Icon(
              Icons.work_outline,
              size: 64,
              color: Theme.of(context).hintColor,
            ),
            const SizedBox(height: 12),
            Text(
              'Toque em + para adicionar sua primeira candidatura',
              textAlign: TextAlign.center,
              style: TextStyle(color: Theme.of(context).hintColor),
            ),
          ],
        ),
      ),
    );
  }
}
