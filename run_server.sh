#!/bin/bash
IP=$(ipconfig getifaddr en0)
if [ -z "$IP" ]; then
    IP=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}' | head -n 1)
fi

echo "=========================================================="
echo "      🚀 PERMTHAVEE TIRE MOBILE PWA DEV SERVER 🚀"
echo "=========================================================="
echo "1. เชื่อมต่อมือถือของคุณเข้ากับ Wi-Fi เดียวกันกับ Mac เครื่องนี้"
echo "2. เปิดเบราว์เซอร์ในมือถือ (Safari บน iOS หรือ Chrome บน Android)"
echo "3. พิมพ์ที่อยู่เว็บด้านล่างนี้:"
echo ""
echo "   👉 http://$IP:8000/mobile.html 👈"
echo ""
echo "4. สำหรับ iOS: กดปุ่มแชร์ (Share) แล้วเลือก 'Add to Home Screen' (เพิ่มไปยังหน้าจอโฮม)"
echo "5. สำหรับ Android: กดจุดสามจุด แล้วเลือก 'Install App' (ติดตั้งแอป)"
echo "=========================================================="
echo "กำลังเริ่มรันเซิร์ฟเวอร์... (กด Ctrl+C เพื่อหยุดการทำงาน)"
echo ""
python3 -m http.server 8000
