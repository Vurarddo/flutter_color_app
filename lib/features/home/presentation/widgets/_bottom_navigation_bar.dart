part of '../home_page.dart';

const String _simpleText = 'Simple';
const String _cubitText = 'Cubit';

class _BottomNavigationBar extends StatelessWidget {
  final TabsRouter tabsRouter;

  const _BottomNavigationBar({
    Key? key,
    required this.tabsRouter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.theme.copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: tabsRouter.setActiveIndex,
        backgroundColor: context.colorScheme.onPrimary,
        currentIndex: tabsRouter.activeIndex,
        fixedColor: context.colorScheme.primary,
        unselectedItemColor: context.theme.disabledColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.color_lens_outlined),
            label: _simpleText,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.color_lens),
            label: _cubitText,
          ),
        ],
      ),
    );
  }
}
