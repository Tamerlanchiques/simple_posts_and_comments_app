part of '../post_list_page.dart';

class PostListPageAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const PostListPageAppBar({super.key});

  @override
  Widget build(BuildContext context) => AppBar(title: const Text('Posts feed'));

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
