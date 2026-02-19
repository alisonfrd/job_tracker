import 'package:go_router/go_router.dart';
import 'package:job_tracker/features/application/presentation/views/applications_list_view.dart';

final appRouter = GoRouter(
  initialLocation: '/applications',
  routes: [
    GoRoute(
      path: '/applications',
      builder: (context, state) => ApplicationsListView(),
    ),

    GoRoute(
      path: '/applications/new',
      builder: (context, state) => const ApplicationsFormView(),
    ),
  ],
);
