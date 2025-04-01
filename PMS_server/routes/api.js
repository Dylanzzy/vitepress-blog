const express = require('express');
const router = express.Router();
const db = require('../config/db.config');

function getWeekStartDateAndEndDate(date) {
  let currentDate = new Date(date);
  let dayOfWeek = currentDate.getDay();
  let startOfWeek = new Date(currentDate);
  startOfWeek.setDate(currentDate.getDate() - dayOfWeek + (dayOfWeek === 0 ? -6 : 1));
  let endOfWeek = new Date(startOfWeek);
  endOfWeek.setDate(startOfWeek.getDate() + 6);

  startOfWeek.setHours(0, 0, 0, 0);
  endOfWeek.setHours(23, 59, 59, 999); 
  return {
      startOfWeek: startOfWeek,
      endOfWeek: endOfWeek
  };
}
router.get('/test', (req, res) => {

  // 示例使用
  let today = new Date(); // 获取当前日期和时间
  let weekDates = getWeekStartDateAndEndDate(today);
  console.log(weekDates);
  console.log("这一周的起始日期（周一）是：", weekDates.startOfWeek);
  console.log("这一周的结束日期（周日）是：", weekDates.endOfWeek);

  // 返回响应
  res.json({
    message: '后端API正常工作！',
    startOfWeek: weekDates.startOfWeek.toISOString(),
    endOfWeek: weekDates.endOfWeek.toISOString(),
  });
});

// 获取所有表名
router.get('/tables', async (req, res) => {
  try {
    const [rows] = await db.query('SHOW TABLES');
    res.json(rows);
  } catch (error) {
    console.error('查询出错：', error);
    res.status(500).json({ message: '服务器错误' });
  }
});

// 根据表名获取数据
router.get('/tables/:tableName', async (req, res) => {
  try {
    const tableName = req.params.tableName;
    const param1 = req.query.param1; // 获取查询参数 param1
    
    const now = new Date(); // 当前时间
    const dayOfWeek = now.getUTCDay(); // 获取当前是星期几（0 表示周日，1 表示周一，依此类推）
  
    // 计算本周周一的 00:00:00 UTC
    const startOfWeek = new Date(now);
    startOfWeek.setUTCDate(now.getUTCDate() - (dayOfWeek === 0 ? 6 : dayOfWeek - 1)); // 如果今天是周日，则减去 6 天；否则减去 (dayOfWeek - 1) 天
    startOfWeek.setUTCHours(0, 0, 0, 0); // 设置为 00:00:00 UTC
  
    // 计算本周周日的 23:59:59 UTC
    const endOfWeek = new Date(startOfWeek);
    endOfWeek.setUTCDate(startOfWeek.getUTCDate() + 6); // 本周周日
    endOfWeek.setUTCHours(23, 59, 59, 999); // 设置为 23:59:59.999 UTC

    if (param1) {
      const [rows] = await db.query(`SELECT * FROM ${tableName} WHERE 當前進度计划完成时间 BETWEEN ? AND ?`, [startOfWeek, endOfWeek]);
      res.json(rows);
    } else {
      const [rows] = await db.query(`SELECT * FROM ${tableName} WHERE 當前進度计划完成时间 NOT BETWEEN ? AND ?`, [startOfWeek, endOfWeek]);
      res.json(rows);
    }

  } catch (error) {
    console.error('查询出错：', error);
    res.status(500).json({ message: '服务器错误' });
  }
});

router.get('/table/:tableName', async (req, res) => {
  try {
    const tableName = req.params.tableName;
    const weeks = req.query.weeks; // 获取查询参数 weeks

    if (weeks) {
      const [rows] = await db.query(`SELECT * FROM ${tableName} WHERE week = ?`, [weeks]);
      res.json(rows);
    } else {
      const [rows] = await db.query(`SELECT * FROM ${tableName}`);
      res.json(rows);
    }

  } catch (error) {
    console.error('查询出错：', error);
    res.status(500).json({ message: '服务器错误' });
  }
});

// 点击获取项目文件明列表
router.get('/demand', async (req, res) => {
  try {
    const demand_id = req.query.demand_id;
    if (demand_id) {
      const rows = ["各Site流速產出監控.xlsx","數據查核步驟.xlsx","20250303_各Site流速產出監控.xlsx","20250303_數據查核步驟.xlsx","20250303_【WK04】ZZC 244M PVD良率還原--2025.2.12.xlsx"];
      res.json(rows);
    } else {
      const rows = [];
      res.json(rows);
    }
    console.log(demand_id);
  } catch (error) {
    console.error('查询出错：', error);
    res.status(500).json({ message: '服务器错误' });
  }
});

// 这里可以添加更多的路由...

module.exports = router; 

// from flask import Flask, request, jsonify
// import mysql.connector
// from mysql.connector import Error
 
// app = Flask(__name__)
 
// # 数据库配置
// db_config = {
//     'user': 'your_username',
//     'password': 'your_password',
//     'host': 'your_host',
//     'database': 'your_database'
// }
 
// @app.route('/table/<string:table_name>', methods=['GET'])
// def get_table_data():
//     try:
//         table_name = request.args.get('tableName')  # 注意：这里应该直接从URL路径获取，但原代码从查询参数获取了tableName，这里保持一致
//         weeks = request.args.get('weeks')
        
//         # 创建数据库连接
//         connection = mysql.connector.connect(**db_config)
//         cursor = connection.cursor(dictionary=True)  # 使用dictionary=True来返回字典而不是元组
 
//         if weeks:
//             query = f"SELECT * FROM {table_name} WHERE week = %s"
//             cursor.execute(query, (weeks,))
//         else:
//             query = f"SELECT * FROM {table_name}"
//             cursor.execute(query)
 
//         rows = cursor.fetchall()
 
//         # 关闭连接
//         cursor.close()
//         connection.close()
 
//         return jsonify(rows), 200
 
//     except Error as e:
//         print(f"查询出错：{e}")
//         return jsonify({"message": "服务器错误"}), 500
 
// if __name__ == '__main__':
//     app.run(debug=True)