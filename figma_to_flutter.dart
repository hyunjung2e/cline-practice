import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '디아콘 앱',
      theme: ThemeData(
        primaryColor: const Color(0xFFFF9823),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Pretendard',
      ),
      home: const LoginScreen(),
    );
  }
}

// 로그인 화면 (100)
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5E6), // fill_PPRF4Z
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 로고 이미지
              Expanded(
                flex: 3,
                child: Center(
                  child: Image.asset('assets/logo_splash.png', width: 200),
                ),
              ),

              // 로그인 버튼들
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // 카카오 로그인 버튼
                      Container(
                        width: double.infinity,
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 15),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFEE500),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Text(
                            '카카오로 시작하기',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),

                      // 구글 로그인 버튼
                      Container(
                        width: double.infinity,
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 15),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/google_logo.png',
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'Google로 시작하기',
                                style: TextStyle(
                                  color: Color(0xFF4A4A4A),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // 애플 로그인 버튼
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4A4A4A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.apple,
                                color: Colors.white,
                                size: 20,
                              ),
                              const SizedBox(width: 10),
                              const Text(
                                'Apple로 시작하기',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 메인 화면 (130)
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // 상단 상태 표시줄
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '9:41',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.signal_cellular_4_bar, size: 16),
                      const SizedBox(width: 4),
                      const Icon(Icons.wifi, size: 16),
                      const SizedBox(width: 4),
                      Container(
                        width: 22,
                        height: 10,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(1),
                          width: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // 메인 컨텐츠
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 인슐린 주입 버튼 영역
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildInsulinButton(
                            title: '식사\n인슐린 주입',
                            color: const Color(0xFFFF9823),
                            textColor: Colors.white,
                            icon: Icons.restaurant,
                          ),
                          const SizedBox(width: 10),
                          _buildInsulinButton(
                            title: '교정\n인슐린 주입',
                            color: const Color(0xFFFFF5E6),
                            textColor: const Color(0xFFFF9823),
                            icon: Icons.healing,
                            hasBorder: true,
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // 최근 인슐린 주입 정보
                      const Text(
                        '최근 인슐린 주입 정보',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFF9823),
                        ),
                      ),

                      const SizedBox(height: 10),

                      // 인슐린 정보 카드
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            _buildInfoRow('인슐린 용량', '17.3 U'),
                            const Divider(),
                            _buildInfoRow('일시', '1월 16일 오전 10시 17분'),
                            const Divider(),
                            _buildInfoRow('주입 종류', '교정 인슐린'),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // 버튼 행
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildActionButton('주입 이력'),
                          _buildActionButton('혈당 목록'),
                          _buildActionButton('혈당 입력'),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // 차트 영역 (실제로는 차트 라이브러리 사용)
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(child: Text('혈당 차트')),
                      ),

                      const SizedBox(height: 20),

                      // 혜택 영역
                      const Text(
                        '혜택',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFF9823),
                        ),
                      ),

                      const SizedBox(height: 10),

                      // 프로모션 배너
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _buildPromotionBanner(
                              color: const Color(0xFFE0FFCE),
                              textColor: const Color(0xFF528905),
                            ),
                            const SizedBox(width: 10),
                            _buildPromotionBanner(
                              color: const Color(0xFF38AFF9),
                              textColor: Colors.white,
                            ),
                            const SizedBox(width: 10),
                            _buildPromotionBanner(
                              color: const Color(0xFFCB93F4),
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // 하단 네비게이션
            Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 4,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [Icon(Icons.bluetooth, color: Colors.green[300])],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.shopping_basket,
                        color: Color(0xFF6D6D6D),
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        '디아콘 몰',
                        style: TextStyle(
                          color: Color(0xFF6D6D6D),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.menu, color: Color(0xFF6D6D6D)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInsulinButton({
    required String title,
    required Color color,
    required Color textColor,
    required IconData icon,
    bool hasBorder = false,
  }) {
    return Container(
      width: 170,
      height: 170,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border:
            hasBorder
                ? Border.all(color: const Color(0xFFFFB55B), width: 1)
                : null,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(icon, color: textColor, size: 32),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF6D6D6D),
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF4A4A4A),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFFFB55B), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFFFF9823),
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildPromotionBanner({
    required Color color,
    required Color textColor,
  }) {
    return Container(
      width: 300,
      height: 100,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '디아콘에서 준비한',
                style: TextStyle(color: textColor, fontSize: 16),
              ),
              Text(
                '고객 감사 이벤트',
                style: TextStyle(
                  color: textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text('바로가기 >', style: TextStyle(color: textColor, fontSize: 12)),
            ],
          ),
          Image.asset('assets/promotion_image.png', width: 80, height: 80),
        ],
      ),
    );
  }
}

// 메뉴 화면 (200)
class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // 앱바
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back, color: Color(0xFF2E2E2E)),
                  const SizedBox(width: 16),
                  const Text(
                    '메뉴',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2E2E2E),
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.settings, color: Color(0xFF4A4A4A)),
                ],
              ),
            ),

            // 메인 컨텐츠
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      // 사용자 정보 카드
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF9823),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.07),
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '아콘님',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  '내 정보 수정',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // 연결 섹션
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '연결',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2E2E2E),
                              ),
                            ),
                            const SizedBox(height: 16),
                            GridView.count(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisCount: 3,
                              childAspectRatio: 1.0,
                              children: [
                                _buildMenuTile('펜 등록', Icons.edit),
                                _buildMenuTile('연속혈당 측정기 연결', Icons.link),
                                _buildMenuTile(
                                  '헬스케어 제공기관 연결',
                                  Icons.location_on,
                                ),
                                _buildMenuTile('팔로워 연결', Icons.group_add),
                              ],
                            ),

                            const SizedBox(height: 16),

                            const Text(
                              '설정',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2E2E2E),
                              ),
                            ),
                            const SizedBox(height: 16),
                            GridView.count(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisCount: 3,
                              childAspectRatio: 1.0,
                              children: [
                                _buildMenuTile('볼러스계산기 모드', Icons.calculate),
                                _buildMenuTile('작용시간/Peak Time', Icons.timer),
                                _buildMenuTile('식사량 설정', Icons.restaurant),
                                _buildMenuTile('교정계수', Icons.sync_alt),
                                _buildMenuTile(
                                  '교정 목표혈당설정',
                                  Icons.track_changes,
                                ),
                                _buildMenuTile('인슐린 설정', Icons.rate_review),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // 펜 문의 카드
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0xFFCFCFCF),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '펜 문의',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF6D6D6D),
                                  ),
                                ),
                                const Text(
                                  '080-447-4700',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF4A4A4A),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.phone_enabled,
                              color: Color(0xFF6D6D6D),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // 하단 링크
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '약관',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF6D6D6D),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            width: 1,
                            height: 12,
                            color: const Color(0xFFCFCFCF),
                          ),
                          const Text(
                            '개인정보 처리방침',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF6D6D6D),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            width: 1,
                            height: 12,
                            color: const Color(0xFFCFCFCF),
                          ),
                          const Text(
                            '로그아웃',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF6D6D6D),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      // 앱 버전
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '앱 버전',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF6D6D6D),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            '1.0',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF6D6D6D),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuTile(String title, IconData icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: const Color(0xFF4A4A4A), size: 24),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 14, color: Color(0xFF4A4A4A)),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
