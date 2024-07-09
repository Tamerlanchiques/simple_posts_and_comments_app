part of '../post_page.dart';

class PostPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PostPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const Text('Posts'));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
