<template>
  <div class="dashboard">
    <!-- 修改标题区域 -->
    <div class="dashboard-header">
      <div class="dashboard-title">
        系统规划推动看板-W{{
          selectedWeek.replace("week", "").padStart(2, "0")
        }}
      </div>
      <div class="header-right">
        <n-select
          v-model:value="selectedWeek"
          :options="weekOptions"
          class="week-select"
          @update:value="handleWeekChange"
        />
      </div>
    </div>

    <n-grid :cols="5" :x-gap="24">
      <!-- 项目总数 -->
      <n-grid-item>
        <n-card class="stat-card">
          <div class="stat-header">项目总数</div>
          <div class="stat-content">
            <n-progress
              type="circle"
              :percentage="
                ((projectCount +
                  statusCounts.onTime +
                  statusCounts.thisWeek +
                  statusCounts.delayed +
                  statusCounts.paused) /
                  200) *
                100
              "
              color="#1890ff"
              :height="100"
              :width="100"
            >
              <div class="stat-number">
                <span class="stat-number blue">{{ projectCount }}</span>
                <span class="stat-change blue"
                  >+{{
                    statusCounts.onTime +
                    statusCounts.thisWeek +
                    statusCounts.delayed +
                    statusCounts.paused
                  }}</span
                >
                <!-- <span class="stat-text">年度计划{{ projectCount+statusCounts.onTime + statusCounts.thisWeek + statusCounts.delayed + statusCounts.paused }}</span> -->
                <span class="stat-text">年度计划200</span>
              </div>
            </n-progress>
          </div>
        </n-card>
      </n-grid-item>

      <!-- 完成项目数 -->
      <n-grid-item>
        <n-card class="stat-card">
          <div class="stat-header">完成项目数</div>
          <div class="stat-content">
            <n-progress
              type="circle"
              :percentage="
                ((projectCount + statusCounts.thisWeek) /
                  (projectCount +
                    statusCounts.onTime +
                    statusCounts.thisWeek +
                    statusCounts.delayed +
                    statusCounts.paused)) *
                100
              "
              color="#52c41a"
              :height="100"
              :width="100"
            >
              <div class="stat-number">
                <span class="stat-number green">{{ projectCount }}</span>
                <span class="stat-change green"
                  >+{{ statusCounts.thisWeek }}</span
                >
                <!-- <span class="stat-text">项目总数{{ projectCount + statusCounts.thisWeek }}</span> -->
                <span class="stat-text"
                  >项目总数{{
                    projectCount +
                    statusCounts.onTime +
                    statusCounts.thisWeek +
                    statusCounts.delayed +
                    statusCounts.paused
                  }}</span
                >
              </div>
            </n-progress>
          </div>
        </n-card>
      </n-grid-item>

      <!-- 图表区域 -->
      <n-grid-item :span="2">
        <n-card class="chart-card">
          <div ref="chartRef" style="width: 100%; height: 300px"></div>
        </n-card>
      </n-grid-item>

      <!-- 右侧状态标签 -->
      <n-grid-item>
        <n-card class="status-tags">
          <n-tag
            type="success"
            class="status-tag"
            :class="{ active: selectedStatus === 'T2' }"
            @click="handleStatusClick('T2')"
          >
            <template #icon>
              <n-icon><CheckmarkCircleOutline /></n-icon>
            </template>
            <span class="status-text">如期進行</span>
            <span class="number">{{ statusCounts.onTime }}</span
            >项
            <span class="change increase">+{{ statusCounts.onTime }}</span>
          </n-tag>
          <n-tag
            type="info"
            class="status-tag"
            :class="{ active: selectedStatus === 'T3' }"
            @click="handleStatusClick('T3')"
          >
            <template #icon>
              <n-icon><TrendingUpOutline /></n-icon>
            </template>
            <span class="status-text">本週上線</span>
            <span class="number">{{ statusCounts.thisWeek }}</span
            >项
            <span class="change info">+{{ statusCounts.thisWeek }}</span>
          </n-tag>
          <n-tag
            type="error"
            class="status-tag"
            :class="{ active: selectedStatus === 'T1' }"
            @click="handleStatusClick('T1')"
          >
            <template #icon>
              <n-icon><AlertCircleOutline /></n-icon>
            </template>
            <span class="status-text">项目Delay</span>
            <span class="number">{{ statusCounts.delayed }}</span
            >项
            <span class="change decrease">+{{ statusCounts.delayed }}</span>
          </n-tag>
          <n-tag
            type="default"
            class="status-tag"
            :class="{ active: selectedStatus === 'T4' }"
            @click="handleStatusClick('T4')"
          >
            <template #icon>
              <n-icon><PauseCircleOutline /></n-icon>
            </template>
            <span class="status-text">暫停项目</span>
            <span class="number">{{ statusCounts.paused }}</span
            >项
            <span class="change default">+{{ statusCounts.paused }}</span>
          </n-tag>
        </n-card>
      </n-grid-item>
    </n-grid>

    <!-- 项目列表 -->
    <n-grid :cols="3" :x-gap="24">
      <n-grid-item>
        <n-card title="大数据分析&程序开发" class="project-card green">
          <template #header-extra>
            <n-button text type="primary" @click="handleAddClick('green')">
              <template #icon>
                <n-icon class="custom-icon green"><AddCircleOutline /></n-icon>
              </template>
            </n-button>
          </template>
          <n-list>
            <template
              v-for="(item, index) in filteredProjectLists.green"
              :key="index"
            >
              <n-list-item class="project-list-item">
                <div class="project-header">
                  <span
                    class="project-title"
                    @click="showDemandFiles(item.demand_id)"
                    >{{ item.title }}</span
                  >
                  <n-button
                    circle
                    text
                    type="error"
                    size="small"
                    class="delete-btn"
                    @click="handleDelete('green', index)"
                  >
                    <template #icon>
                      <n-icon><CloseCircleOutline /></n-icon>
                    </template>
                  </n-button>
                </div>
                <div class="project-body">
                  <div
                    v-for="(subItem, subIndex) in item.items"
                    :key="subIndex"
                    class="sub-item"
                  >
                    • {{ subItem }}
                  </div>
                </div>
              </n-list-item>
            </template>
          </n-list>
        </n-card>
      </n-grid-item>
      <n-grid-item>
        <n-card title="智能品控" class="project-card blue">
          <template #header-extra>
            <n-button text type="primary" @click="handleAddClick('blue')">
              <template #icon>
                <n-icon class="custom-icon blue"><AddCircleOutline /></n-icon>
              </template>
            </n-button>
          </template>
          <n-list>
            <template
              v-for="(item, index) in filteredProjectLists.blue"
              :key="index"
            >
              <n-list-item class="project-list-item">
                <div class="project-header">
                  <span
                    class="project-title"
                    @click="showDemandFiles(item.demand_id)"
                    >{{ item.title }}</span
                  >
                  <n-button
                    circle
                    text
                    type="error"
                    size="small"
                    class="delete-btn"
                    @click="handleDelete('blue', index)"
                  >
                    <template #icon>
                      <n-icon><CloseCircleOutline /></n-icon>
                    </template>
                  </n-button>
                </div>
                <div class="project-body">
                  <div
                    v-for="(subItem, subIndex) in item.items"
                    :key="subIndex"
                    class="sub-item"
                  >
                    • {{ subItem }}
                  </div>
                </div>
              </n-list-item>
            </template>
          </n-list>
        </n-card>
      </n-grid-item>
      <n-grid-item>
        <n-card title="QMS&战情中心" class="project-card orange">
          <template #header-extra>
            <n-button text type="primary" @click="handleAddClick('orange')">
              <template #icon>
                <n-icon class="custom-icon orange"><AddCircleOutline /></n-icon>
              </template>
            </n-button>
          </template>
          <n-list>
            <template
              v-for="(item, index) in filteredProjectLists.orange"
              :key="index"
            >
              <n-list-item class="project-list-item">
                <div class="project-header">
                  <span
                    class="project-title"
                    @click="showDemandFiles(item.demand_id)"
                    >{{ item.title }}</span
                  >
                  <n-button
                    circle
                    text
                    type="error"
                    size="small"
                    class="delete-btn"
                    @click="handleDelete('orange', index)"
                  >
                    <template #icon>
                      <n-icon><CloseCircleOutline /></n-icon>
                    </template>
                  </n-button>
                </div>
                <div class="project-body">
                  <div
                    v-for="(subItem, subIndex) in item.items"
                    :key="subIndex"
                    class="sub-item"
                  >
                    • {{ subItem }}
                  </div>
                </div>
              </n-list-item>
            </template>
          </n-list>
        </n-card>
      </n-grid-item>
    </n-grid>
  </div>

  <!-- 修改添加模态框 -->
  <n-modal
    v-model:show="showModal"
    preset="dialog"
    title="添加项目"
    positive-text="确认"
    negative-text="取消"
    @positive-click="
      () => {
        handleConfirm();
        return false; // 阻止模态框关闭
      }
    "
    @negative-click="handleCancel"
    :mask-closable="false"
    class="custom-modal"
  >
    <div class="modal-content">
      <div class="input-group">
        <div class="input-label">
          项目标题
          <span class="required">*</span>
        </div>
        <n-input
          v-model:value="inputValue.title"
          type="text"
          placeholder="请输入项目标题"
          :autofocus="true"
          clearable
        />
      </div>
      <!-- <div class="input-group">
        <div class="input-label">
          项目ID
          <span class="required">*</span>
        </div>
        <n-input
          v-model:value="inputValue.ID"
          type="text"
          placeholder="请输入项目ID"
          clearable
        />
      </div>
      <div class="input-group">
        <div class="input-label">
          选择周数
          <span class="required">*</span>
        </div>
        <n-select
          v-model:value="inputValue.week"
          :options="weekOptions"
          placeholder="请选择周数"
          clearable
        />
      </div> -->
      <div class="input-group">
        <div class="input-label">项目内容</div>
        <div class="content-input-group">
          <n-input
            v-model:value="inputValue.items"
            type="text"
            placeholder="请输入项目内容"
            clearable
          />
          <n-button
            type="primary"
            size="small"
            @click="addContentItem"
            :disabled="!inputValue.items"
          >
            添加
          </n-button>
        </div>
        <!-- 显示已添加的内容列表 -->
        <div class="content-list" v-if="contentItems.length > 0">
          <div
            v-for="(item, index) in contentItems"
            :key="index"
            class="content-item"
          >
            <span>• {{ item }}</span>
            <n-button
              circle
              text
              type="error"
              size="tiny"
              @click="removeContentItem(index)"
            >
              <template #icon>
                <n-icon><CloseCircleOutline /></n-icon>
              </template>
            </n-button>
          </div>
        </div>
      </div>
    </div>
  </n-modal>

  <!-- 添加文件列表模态框 -->
  <n-modal
    v-model:show="showFilesModal"
    preset="card"
    title="相关文件列表"
    style="width: 600px"
    :mask-closable="true"
  >
    <n-list>
      <n-list-item v-for="(file, index) in filesList" :key="index">
        <n-button text @click="downloadFile(file)">
          <template #icon>
            <n-icon><DocumentOutline /></n-icon>
          </template>
          {{ file }}
        </n-button>
      </n-list-item>
    </n-list>
  </n-modal>
</template>

<script setup>
// 导入必要的组件和工具
import { onMounted, ref, computed } from "vue";
import axios from "axios";
import {
  // Naive UI 组件导入
  NCard, // 卡片组件
  NProgress, // 进度条组件
  NGrid, // 栅格布局
  NGridItem, // 栅格项
  NList, // 列表容器
  NListItem, // 列表项
  NTag, // 标签
  NIcon, // 图标
  NButton, // 按钮
  NInput, // 输入框
  NModal, // 模态框
  useMessage, // 消息提示
  NMessageProvider, // 消息提供者
  NSelect,
} from "naive-ui";

// 导入 ECharts 图表库
import * as echarts from "echarts";

// 导入所需图标
import {
  TrendingUpOutline, // 上升趋势图标
  CheckmarkCircleOutline, // 成功对勾图标
  AlertCircleOutline, // 警告图标
  PauseCircleOutline, // 暂停图标
  AddCircleOutline, // 添加图标
  CloseCircleOutline, // 关闭/删除图标
  GameControllerOutline, // 游戏控制图标
  DocumentOutline, // 文档图标
} from "@vicons/ionicons5";

// 图表引用
const chartRef = ref(null);

// 状态管理
const showModal = ref(false); // 控制模态框显示
const inputValue = ref({
  title: "",
  ID: "",
  week: null,
  items: "",
});
const currentCardType = ref(""); // 当前操作的卡片类型（green/blue/orange）
const message = useMessage(); // 消息提示实例

// 项目列表数据
const projectLists = ref({
  green: [],
  blue: [],
  orange: [],
});

// 添加图表数据的响应式引用
const chartData = ref({
  analysis: { completed: 0, inProgress: 0 },
  control: { completed: 0, inProgress: 0 },
  dash: { completed: 0, inProgress: 0 },
});

// 添加状态计数的响应式引用
const statusCounts = ref({
  onTime: 0, // 如期进行
  thisWeek: 0, // 本週上線
  delayed: 0, // 项目Delay
  paused: 0, // 暫停项目
});

// 使用ref来创建响应式变量
const projectCount = ref(0);

// 添加内容项列表
const contentItems = ref([]);

// 添加选中状态的响应式变量
const selectedStatus = ref("");

// 添加过滤后的项目列表计算属性
const filteredProjectLists = computed(() => {
  if (!selectedStatus.value) {
    return projectLists.value; // 不筛选时返回全部
  }

  return {
    green: projectLists.value.green.filter((project) =>
      project.status.includes(selectedStatus.value)
    ),
    blue: projectLists.value.blue.filter((project) =>
      project.status.includes(selectedStatus.value)
    ),
    orange: projectLists.value.orange.filter((project) =>
      project.status.includes(selectedStatus.value)
    ),
  };
});

// 添加获取周数的方法
const getCurrentWeek = () => {
  const now = new Date();
  const start = new Date(now.getFullYear(), 0, 1);
  const diff = now - start;
  const oneWeek = 1000 * 60 * 60 * 24 * 7;
  const week = Math.floor(diff / oneWeek) + 1;
  // return week.toString().padStart(2, '0')
  return "week" + week.toString();
};

// 添加周数选择相关的响应式变量
const selectedWeek = ref(getCurrentWeek());

// 生成周数选项
const weekOptions = Array.from({ length: 52 }, (_, index) => ({
  label: `W${String(index + 1).padStart(2, "0")}`,
  value: `week${index + 1}`,
}));

// 处理周数变化
const handleWeekChange = async (value) => {
  try {
    const response = await axios.get(
      `http://localhost:3001/api/table/meeting?weeks=${value}`
    );
    // ... 处理响应数据
    await fetchProjects(); // 重新获取项目数据
  } catch (error) {
    console.error("获取数据失败：", error);
    message.error("获取数据失败");
  }
};

// 添加文件列表模态框相关变量
const showFilesModal = ref(false);
const filesList = ref([]);
const currentDemandId = ref("");

// 显示需求文件列表
const showDemandFiles = async (demandId) => {
  if (!demandId) {
    message.warning("无法获取需求ID");
    return;
  }

  currentDemandId.value = demandId;

  try {
    const response = await axios.get(
      `http://localhost:3001/api/demand?demand_id=${demandId}`
    );
    filesList.value = response.data;
    showFilesModal.value = true;
  } catch (error) {
    console.error("获取文件列表失败:", error);
    message.error("获取文件列表失败");
  }
};

// 下载文件功能（可选）
const downloadFile = (fileName) => {
  // 这里可以实现文件下载逻辑
  // 例如：window.open(`http://localhost:3001/api/download?file=${fileName}&demand_id=${currentDemandId.value}`)
  message.info(`准备下载文件: ${fileName}`);
};

// 修改获取项目列表的方法
const fetchProjects = async () => {
  try {
    const response1 = await axios.get("http://localhost:3001/api/tables/word");
    const response = await axios.get(
      `http://localhost:3001/api/table/meeting?weeks=${selectedWeek.value}`
    );
    const projects = response.data;
    const projects1 = response1.data;
    projectCount.value = projects1.length;

    // 重置图表数据
    chartData.value = {
      analysis: { completed: 0, inProgress: 0 },
      control: { completed: 0, inProgress: 0 },
      dash: { completed: 0, inProgress: 0 },
    };

    // 重置项目列表
    projectLists.value = {
      green: [],
      blue: [],
      orange: [],
    };

    // 重置状态计数
    statusCounts.value = {
      onTime: 0,
      thisWeek: 0,
      delayed: 0,
      paused: 0,
    };
    // 处理项目数据(上半部分)
    projects1.forEach((project) => {
      if (project.當前進度 === "⑬Closed") {
        chartData.value[project.category].completed++;
      } else {
        chartData.value[project.category].inProgress++;
      }
    });

    // 处理项目数据(下半部分)
    projects.forEach((project) => {
      // 处理项目列表
      switch (project.type1) {
        case "大数据分析&程序开发":
          projectLists.value.green.push({
            title: project.p_name,
            items: project.p_detail.split(";"),
            status: project.current_progress,
            demand_id: project.demand_id, // 保存 demand_id
          });
          break;
        case "智能品控":
          projectLists.value.blue.push({
            title: project.p_name,
            items: project.p_detail.split(";"),
            status: project.current_progress,
            demand_id: project.demand_id, // 保存 demand_id
          });
          break;
        case "QMS&战情中心":
          projectLists.value.orange.push({
            title: project.p_name,
            items: project.p_detail.split(";"),
            status: project.current_progress,
            demand_id: project.demand_id, // 保存 demand_id
          });
          break;
      }

      // 统计各状态的项目数量
      switch (project.current_progress) {
        case "T2":
          statusCounts.value.onTime++;
          break;
        case "T3":
          statusCounts.value.thisWeek++;
          break;
        case "T1":
          statusCounts.value.delayed++;
          break;
        case "T4":
          statusCounts.value.paused++;
          break;
      }
    });

    // 更新图表
    updateChart();
  } catch (error) {
    message.error("获取项目列表失败：" + error.message);
  }
};

// 添加更新图表的方法
const updateChart = () => {
  if (!chartRef.value) return;

  const chart = echarts.init(chartRef.value);
  chart.setOption({
    tooltip: {},
    legend: {
      data: ["已完成", "进行中"],
      textStyle: {
        fontSize: 20,
      },
      bottom: 0,
    },
    grid: {
      top: "10%",
      left: "5%",
      right: "5%",
      bottom: "10%",
      containLabel: true,
      show: false,
    },
    xAxis: {
      data: ["大数据分析&程序开发", "智能品控", "QMS&战情中心"],
      axisLabel: {
        interval: 0,
        rotate: 0,
        fontSize: 20,
      },
    },
    yAxis: {
      type: "value",
      axisLabel: {
        fontSize: 18,
      },
    },
    series: [
      {
        name: "已完成",
        type: "bar",
        stack: "total",
        barWidth: "32%",
        data: [
          chartData.value.analysis.completed,
          chartData.value.control.completed,
          chartData.value.dash.completed,
        ],
        color: "#52c41a",
        itemStyle: {
          borderRadius: [7, 7, 0, 0],
        },
        label: {
          show: true,
          position: "inside",
          fontSize: 18,
        },
      },
      {
        name: "进行中",
        type: "bar",
        stack: "total",
        barWidth: "32%",
        data: [
          chartData.value.analysis.inProgress,
          chartData.value.control.inProgress,
          chartData.value.dash.inProgress,
        ],
        color: "#1890ff",
        itemStyle: {
          borderRadius: [7, 7, 0, 0],
        },
        label: {
          show: true,
          position: "inside",
          fontSize: 20,
        },
      },
    ],
  });
};

// 处理添加按钮点击
const handleAddClick = (type) => {
  currentCardType.value = type; // 记录当前操作的卡片类型
  showModal.value = true; // 显示添加模态框
};

// 添加内容项
const addContentItem = () => {
  if (inputValue.value.items.trim()) {
    contentItems.value.push(inputValue.value.items);
    inputValue.value.items = ""; // 清空输入框
  }
};

// 删除内容项
const removeContentItem = (index) => {
  contentItems.value.splice(index, 1);
};

// 修改确认方法
const handleConfirm = () => {
  // 验证必填项
  if (!inputValue.value.title.trim()) {
    message.warning("请输入项目标题");
    return false; // 返回 false 阻止模态框关闭
  }
  // if (!inputValue.value.ID.trim()) {
  //   message.warning('请输入项目ID')
  //   return false
  // }
  // if (!inputValue.value.week) {
  //   message.warning('请选择周数')
  //   return false
  // }

  // 添加新项目到对应列表
  projectLists.value[currentCardType.value].push({
    title: inputValue.value.title,
    items: [...contentItems.value], // 使用已添加的内容列表
    demand_id:
      projectLists.value[currentCardType.value][
        projectLists.value[currentCardType.value].length - 1
      ].demand_id, // 保持原有的 demand_id
  });

  // 重置所有输入
  inputValue.value = {
    title: "",
    ID: "",
    week: null,
    items: "",
  };
  contentItems.value = []; // 清空内容列表
  showModal.value = false;
  message.success("添加成功");
  return true; // 允许模态框关闭
};

// 修改取消方法
const handleCancel = () => {
  inputValue.value = {
    title: "",
    ID: "",
    week: null,
    items: "",
  };
  contentItems.value = []; // 清空内容列表
  showModal.value = false;
};

// 处理删除项目
const handleDelete = (type, index) => {
  // 从对应列表中删除指定索引的项目
  projectLists.value[type].splice(index, 1);
  message.success("删除成功");
};

// 添加处理状态点击的方法
const handleStatusClick = (status) => {
  selectedStatus.value = selectedStatus.value === status ? "" : status;
};

// 组件挂载后初始化图表
onMounted(async () => {
  await fetchProjects();

  const chart = echarts.init(chartRef.value);
  chart.setOption({
    tooltip: {},
    legend: {
      data: ["已完成", "进行中"],
      textStyle: {
        fontSize: 20,
      },
      bottom: 0,
    },
    grid: {
      top: "10%",
      left: "5%",
      right: "5%",
      bottom: "10%",
      containLabel: true,
      show: false,
    },
    xAxis: {
      data: ["大数据分析&程序开发", "智能品控", "QMS&战情中心"],
      axisLabel: {
        interval: 0,
        rotate: 0,
        fontSize: 20,
      },
    },
    yAxis: {
      type: "value",
      axisLabel: {
        fontSize: 18,
      },
    },
    backgroundColor: "transparent",
  });

  // 监听窗口大小变化
  window.addEventListener("resize", () => {
    chart.resize();
  });
});

// 在 computed 部分添加新的计算属性
// const getCardHeight = computed(() => {
//   const greenCount = filteredProjectLists.value.green.length;
//   const blueCount = filteredProjectLists.value.blue.length;
//   const orangeCount = filteredProjectLists.value.orange.length;

//   const maxCount = Math.max(greenCount, blueCount, orangeCount);
//   const height = maxCount <= 3 ? '500px' :
//                  maxCount <= 4 ? '600px' :
//                  maxCount <= 5 ? '700px' :
//                  maxCount <= 6 ? '800px' :
//                  maxCount <= 7 ? '900px' :
//                  maxCount <= 8 ? '1000px' :
//                  maxCount <= 9 ? '1100px' :
//                  maxCount <= 10 ? '1200px' :
//                  maxCount <= 11 ? '1300px' :
//                  maxCount <= 12 ? '1400px' :
//                  maxCount <= 13 ? '1500px' :
//                  maxCount <= 14 ? '1600px' :
//                  maxCount <= 15 ? '1700px' : '1900px';

//   return {
//     green: height,
//     blue: height,
//     orange: height
//   };
// });

const getCardHeight = computed(() => {
  const { green, blue, orange } = filteredProjectLists.value;
  const maxCount = Math.max(green.length, blue.length, orange.length);

  // 基础高度和步进值设定
  const baseHeight = 500;
  const step = 125;
  const maxThreshold = 15;

  // 计算动态高度
  let height;
  if (maxCount <= 3) {
    height = baseHeight;
  } else if (maxCount > maxThreshold) {
    height = 2200;
  } else {
    height = baseHeight + (maxCount - 3) * step;
  }

  // 返回统一高度配置
  const commonHeight = `${height}px`;
  return { green: commonHeight, blue: commonHeight, orange: commonHeight };
});
</script>

<style scoped>
/* 仪表板容器样式 */
.dashboard {
  padding: 32px;
  background: #ffffff;
  min-height: 90vh;
  /* 移除最大高度限制 */
  /* max-height: 185vh; */
  overflow: hidden; /* 防止出现滚动条 */
}

/* 顶部区域布局 */
.top-section {
  display: flex;
  gap: 24px;
  margin-bottom: 40px;
  min-height: 280px; /* 增加整体高度 */
}

/* 统计卡片区域 */
.stat-cards {
  flex: 2;
  display: flex;
  gap: 50px; /* 增加卡片间距 */
}

/* 单个统计卡片样式 */
.stat-card {
  min-width: 330px;
  padding: 5px;
  background: linear-gradient(145deg, #ffffff, #f5f7fa);
  border-radius: 15px;
  border: none;
  height: 90%;
  transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.04);

  &:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.08);
    background: linear-gradient(145deg, #ffffff, #f0f5ff);
  }

  .n-progress {
    margin-top: 15px;
    transform: scale(1.8);
  }
}

/* 图表卡片样式 */
.chart-card {
  flex: 3;
  padding: 30px;
  background: linear-gradient(145deg, #ffffff, #f5f7fa);
  border: 0;
  border-radius: 15px;
  height: 90%;
  transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.04);

  &:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.08);
    background: linear-gradient(145deg, #ffffff, #f0f5ff);
  }
}

/* 统计卡片标题样式 */
.stat-header {
  font-size: 30px;
  font-weight: 500;
  margin-bottom: 50px;
  text-align: center;
}

/* 统计卡片内容布局 */
.stat-content {
  display: flex; /* 使用弹性布局，使子元素可以灵活排列 */
  justify-content: center; /* 将子元素在主轴上居中对齐 */
}

/* 统计数字样式 */
.stat-number {
  font-size: 20px;
  font-weight: bold;
  text-align: center;
}
.stat-number.blue {
  color: #1890ff;
}
.stat-number.green {
  color: #52c41a;
}

.stat-text {
  font-size: 10px;
  color: #aeb2b6;
  font-weight: bold;
  text-align: center;
  display: block;
}

/* 变化数值样式 */
.stat-change {
  font-size: 10px;
  margin-left: 4px;
}

.stat-change.green {
  color: #52c41a; /* 增长为绿色 */
}
.stat-change.blue {
  color: #1890ff; /* 增长为蓝色 */
}

/* 状态标签组样式 */
.status-tags {
  height: 90%;
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: 24px;
  min-width: 260px;
  padding: 0 0; /* 添加左右内边距 */
  transition: all 0.3s;
  border: 0;
}

/* 单个状态标签样式 */
.status-tag {
  width: 100%;
  height: 75px;
  padding: 16px 20px;
  font-size: 18px;
  border-radius: 12px;
  transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
  margin-bottom: 12px;
  border: none;
  display: flex;
  align-items: center;
  /* backdrop-filter: blur(10px); */

  &:hover {
    transform: translateY(-5px) scale(1.02);
    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.12);
  }

  /* 成功状态样式优化 */
  &.n-tag--success {
    background: linear-gradient(
      145deg,
      rgba(82, 196, 26, 0.1),
      rgba(82, 196, 26, 0.2)
    );
    color: #52c41a;
    border: 1px solid rgba(82, 196, 26, 0.3);
  }

  /* 信息状态样式优化 */
  &.n-tag--info {
    background: linear-gradient(
      145deg,
      rgba(24, 144, 255, 0.1),
      rgba(24, 144, 255, 0.2)
    );
    color: #1890ff;
    border: 1px solid rgba(24, 144, 255, 0.3);
  }

  /* 错误状态样式优化 */
  &.n-tag--error {
    background: linear-gradient(
      145deg,
      rgba(245, 34, 45, 0.1),
      rgba(245, 34, 45, 0.2)
    );
    color: #f5222d;
    border: 1px solid rgba(245, 34, 45, 0.3);
  }

  /* 默认状态样式优化 */
  &.n-tag--default {
    background: linear-gradient(
      145deg,
      rgba(140, 140, 140, 0.1),
      rgba(140, 140, 140, 0.2)
    );
    color: #8c8c8c;
    border: 1px solid rgba(140, 140, 140, 0.3);
  }

  /* 图标样式 */
  .n-icon {
    margin-right: 8px;
    font-size: 18px;
  }

  /* 数字样式 */
  .number {
    font-weight: 500;
    margin: 0 4px;
  }
  /* 数字样式 */
  .status-text {
    font-size: 24px;
    font-weight: 500;
    margin: 0 4px;
  }

  /* 变化数字样式 */
  .change {
    font-size: 14px;
    font-weight: 500;
    padding: 2px 8px;
    border-radius: 4px;

    &.increase {
      background: rgba(82, 196, 26, 0.1);
    }
    &.info {
      background: rgba(24, 144, 255, 0.1);
    }
    &.decrease {
      background: rgba(245, 34, 45, 0.1);
    }
    &.default {
      background: rgba(140, 140, 140, 0.1);
    }
  }
}

.custom-icon {
  font-size: 30px; /* 设置图标大小 */
  /* 或者 */
  width: 24px;
  height: 24px;

  &.green {
    color: #52c41a;
  }
  &.blue {
    color: #1890ff;
  }
  &.orange {
    color: #fa8c16;
  }
}

/* 项目卡片样式 */
.project-card {
  height: auto;
  margin-top: 20px;
  background: linear-gradient(145deg, #ffffff, #f5f7fa);
  border-radius: 15px;
  transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.04);
  overflow: hidden; /* 防止出现外层滚动条 */
  /* backdrop-filter: blur(100px); */

  &:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.08);
    background: linear-gradient(145deg, #ffffff, #f0f5ff);
  }

  /* 修改列表容器样式 */
  :deep(.n-list) {
    padding: 20px;
    display: flex;
    flex-direction: column;
    gap: 0;
    background: transparent;
    height: calc(100% - 60px);
    overflow-y: auto;
  }
}

/* 项目卡片左边框颜色优化 */
.project-card.green {
  border-left: 10px solid #52c41a;
  background: linear-gradient(145deg, #ffffff, #f6ffed);
  min-height: v-bind("getCardHeight.green");
}

.project-card.blue {
  border-left: 10px solid #1890ff;
  background: linear-gradient(145deg, #ffffff, #e6f7ff);
  min-height: v-bind("getCardHeight.blue");
}

.project-card.orange {
  border-left: 10px solid #fa8c16;
  background: linear-gradient(145deg, #ffffff, #fff7e6);
  min-height: v-bind("getCardHeight.orange");
}

/* 卡片标题居中样式 */
:deep(.n-card-header) {
  font-size: 26px;
  font-weight: 1000;
  text-align: center;

  .n-card-header-main {
    justify-content: center;
    flex: 1;
  }

  .n-card-header-extra {
    position: absolute;
    right: 16px; /* 右侧按钮定位 */
  }
}

/* 图表标题样式 */
.chart-title {
  text-align: center;
  font-size: 18px;
  font-weight: 500;
  margin-bottom: 20px;
}

/* 图表容器样式 */
.chart-container {
  width: 100% !important;
  height: 180px !important;
}

/* 修改列表项样式 */
:deep(.n-list-item) {
  padding: 16px;
  flex-direction: column;
  align-items: flex-start;
  height: auto;
  min-height: 60px;
}

/* 修改默认背景颜色和悬停效果以匹配不同的卡片类型 */
.project-card.green :deep(.n-list-item) {
  background: rgba(82, 196, 26, 0.05);
  border-bottom: 1px solid rgba(82, 196, 26, 0.1);

  &:last-child {
    border-bottom: none;
  }

  &:hover {
    background: rgba(82, 196, 26, 0.1);
  }
}

.project-card.blue :deep(.n-list-item) {
  background: rgba(24, 144, 255, 0.05);
  border-bottom: 1px solid rgba(24, 144, 255, 0.1);

  &:last-child {
    border-bottom: none;
  }

  &:hover {
    background: rgba(24, 144, 255, 0.1);
  }
}

.project-card.orange :deep(.n-list-item) {
  background: rgba(250, 140, 22, 0.05);
  border-bottom: 1px solid rgba(250, 140, 22, 0.1);

  &:last-child {
    border-bottom: none;
  }

  &:hover {
    background: rgba(250, 140, 22, 0.1);
  }
}

/* 修改卡片内容区域样式 */
:deep(.n-card-content) {
  padding: 0;
  height: calc(100% - 60px);
}

/* 修改卡片头部样式 */
:deep(.n-card-header) {
  height: 60px;
  font-weight: 550;
  padding: 0 20px;
  display: flex;
  align-items: center;
}

/* 全局样式覆盖 */
/* :global(.n-modal) {
  width: 600px !important;
} */

/* :global(.n-modal-content) {
  padding: 24px !important;
  border-radius: 16px !important;
  background: #fff !important;
  box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1) !important;
} */

/* :global(.n-modal-header) {
  text-align: center !important;
  padding-bottom: 20px !important;
  border-bottom: 1px solid #f0f0f0 !important;
} */

:global(.n-modal-header-title) {
  font-size: 20px !important;
  font-weight: 500 !important;
  color: #333 !important;
}

.modal-content {
  /* text-align: center; 文本居中 */
  padding: 20px 24px;
}

:deep(.n-input) {
  border: 1px solid #1890ff;
  border-radius: 0;
}

:deep(.n-input__input-el) {
  height: 40px;
  padding: 0 18px;
}

:deep(.n-input-wrapper) {
  padding: 0;
}

/* 添加模态框动画 */
:global(.n-modal-mask) {
  background: rgba(0, 0, 0, 0.45) !important;
  backdrop-filter: blur(2px);
}

:global(.n-modal-container) {
  animation: modalShow 0.2s ease-out;
}

@keyframes modalShow {
  from {
    opacity: 0;
    transform: translateY(-20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

/* 修改列表项内容样式 */
.list-item-content {
  width: 100%;
  display: flex;
  flex-direction: column;
  padding: 0; /* 移除额外的内边距 */
}

/* 删除按钮样式 */
.delete-btn {
  opacity: 0;
  transition: all 0.3s;
  position: absolute; /* 使用绝对定位 */
  right: 10px; /* 固定在右侧 */

  &:hover {
    color: #ff4d4f;
    background: rgba(255, 77, 79, 0.1);
  }
}

/* 鼠标悬停时显示删除按钮 */
:deep(.n-list-item:hover) .delete-btn {
  opacity: 1;
}

/* 修改删除按钮图标大小 */
.delete-btn .n-icon {
  font-size: 24px;
}

/* 修改列表项文本样式 */
.list-item-content span {
  flex: 1;
  text-align: center; /* 文本居中 */
}

/* 添加新的模态框和输入框样式 */
:deep(.custom-modal) {
  .n-modal-content {
    padding: 24px;
    border-radius: 16px;
  }

  .n-modal-header {
    text-align: center;
    padding-bottom: 20px;
  }

  .n-modal-title {
    font-size: 24px;
    font-weight: 600;
    color: #333;
  }

  .n-input {
    margin: 20px 0;

    .n-input__input-el {
      height: 48px;
      font-size: 16px;
      border-radius: 24px;
      padding: 0 24px;
      text-align: center;
      border: 2px solid #eee;
      transition: all 0.3s ease;

      &:hover,
      &:focus {
        border-color: #1890ff;
        box-shadow: 0 0 0 2px rgba(24, 144, 255, 0.2);
      }
    }

    .n-input__placeholder {
      text-align: center;
      color: #999;
      font-size: 16px;
    }
  }

  .n-modal-footer {
    display: flex;
    justify-content: center;
    gap: 12px;
    padding-top: 20px;
  }

  .n-button {
    min-width: 120px;
    height: 40px;
    font-size: 16px;
    border-radius: 20px;

    &.n-button--primary-type {
      background: #1890ff;
      border: none;

      &:hover {
        background: #40a9ff;
      }
    }

    &.n-button--default-type {
      border: none;
      background: #f5f5f5;

      &:hover {
        background: #e8e8e8;
      }
    }
  }
}

/* 修改模态框相关样式 */
:deep(.n-modal) {
  .n-modal-content {
    padding: 32px;
    border-radius: 16px;
    background: rgba(255, 255, 255, 0.98);
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
    border: 1px solid rgba(255, 255, 255, 0.8);
    backdrop-filter: blur(20px);
  }

  .n-modal-header {
    border: none;
    padding: 0 0 24px 0;

    .n-modal-header-title {
      font-size: 24px;
      font-weight: 600;
      color: #1a1a1a;
      text-align: center;
    }
  }

  .n-modal-footer {
    border: none;
    padding: 24px 0 0 0;
    display: flex;
    justify-content: center;
    gap: 16px;

    .n-button {
      min-width: 120px;
      height: 44px;
      font-size: 16px;
      font-weight: 500;
      border-radius: 22px;
      transition: all 0.3s ease;

      &.n-button--primary-type {
        background: #1890ff;
        border: none;

        &:hover {
          background: #40a9ff;
          transform: translateY(-1px);
          box-shadow: 0 4px 12px rgba(24, 144, 255, 0.3);
        }

        &:active {
          transform: translateY(0);
        }
      }

      &.n-button--default-type {
        background: #f5f5f5;
        border: none;

        &:hover {
          background: #e8e8e8;
          transform: translateY(-1px);
        }

        &:active {
          transform: translateY(0);
        }
      }
    }
  }
}

.modal-content {
  padding: 8px 0;

  .n-input {
    .n-input__input-el {
      height: 48px;
      font-size: 16px;
      border-radius: 12px;
      padding: 0 20px;
      text-align: center;
      border: 2px solid #f0f0f0;
      transition: all 0.3s ease;
      background: rgba(255, 255, 255, 0.9);

      &:hover {
        border-color: #1890ff;
        background: #fff;
      }

      &:focus {
        border-color: #1890ff;
        box-shadow: 0 0 0 3px rgba(24, 144, 255, 0.1);
        background: #fff;
      }
    }

    .n-input__placeholder {
      color: #bfbfbf;
      font-size: 15px;
    }
  }
}

/* 模态框动画效果 */
:global(.n-modal-mask) {
  background: rgba(0, 0, 0, 0.25);
  backdrop-filter: blur(6px);
  transition: all 0.3s ease-out;
}

:global(.n-modal-container) {
  animation: modalEnter 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

:global(.n-modal-container.n-modal--transition-leave-active) {
  animation: modalLeave 0.2s cubic-bezier(0.4, 0, 0.2, 1);
}

@keyframes modalEnter {
  from {
    opacity: 0;
    transform: scale(0.95) translateY(-20px);
  }
  to {
    opacity: 1;
    transform: scale(1) translateY(0);
  }
}

@keyframes modalLeave {
  from {
    opacity: 1;
    transform: scale(1) translateY(0);
  }
  to {
    opacity: 0;
    transform: scale(0.95) translateY(-20px);
  }
}

/* 修改模态框相关样式 */
:deep(.n-modal) {
  .n-modal-content {
    padding: 32px;
    border-radius: 16px;
    background: rgba(255, 255, 255, 0.98);
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
    border: 1px solid rgba(255, 255, 255, 0.8);
    backdrop-filter: blur(20px);
  }

  .n-modal-header {
    border: none;
    padding: 0 0 24px 0;
  }

  .n-modal-header__title {
    font-size: 24px;
    font-weight: 600;
    color: #1a1a1a;
    text-align: center;
  }

  .n-modal-footer {
    border: none;
    padding: 24px 0 0 0;
    display: flex;
    justify-content: center;
    gap: 16px;
  }
}

/* 输入框样式 */
.modal-content {
  padding: 8px 0;

  :deep(.n-input) {
    .n-input__input-el {
      height: 48px;
      font-size: 16px;
      border-radius: 0px;
      padding: 0 20px;
      text-align: center;
      border: 2px solid #f0f0f0;
      transition: all 0.5s ease;
      background: rgba(255, 255, 255, 0.9);

      /* &:hover {
        border-color: #1890ff;
        background: #fff;
      }
      
      &:focus {
        border-color: #1890ff;
        box-shadow: 0 0 0 3px rgba(24, 144, 255, 0.1);
        background: #fff;
      } */
    }

    .n-input__placeholder {
      color: #bfbfbf;
      font-size: 15px;
    }
  }
}

/* 按钮样式 */
:deep(.custom-modal) {
  .n-button {
    min-width: 120px;
    height: 44px;
    font-size: 16px;
    font-weight: 500;
    border-radius: 22px;
    transition: all 0.3s ease;

    &.n-button--primary-type {
      background: #1890ff;
      border: none;
      color: #fff;

      &:hover {
        background: #40a9ff;
        transform: translateY(-1px);
        box-shadow: 0 4px 12px rgba(24, 144, 255, 0.3);
      }

      &:active {
        transform: translateY(0);
      }
    }

    &.n-button--default-type {
      background: #f5f5f5;
      border: none;
      color: #666;

      &:hover {
        background: #e8e8e8;
        transform: translateY(-1px);
      }

      &:active {
        transform: translateY(0);
      }
    }
  }
}

/* 模态框动画 */
:global(.n-modal-mask) {
  background: rgba(0, 0, 0, 0.25);
  backdrop-filter: blur(6px);
  transition: all 0.3s ease-out;
}

:global(.n-modal-container) {
  animation: modalEnter 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

@keyframes modalEnter {
  from {
    opacity: 0;
    transform: scale(0.95) translateY(-20px);
  }
  to {
    opacity: 1;
    transform: scale(1) translateY(0);
  }
}

:deep(.n-modal-container.n-modal--transition-leave-active) {
  animation: modalLeave 0.2s cubic-bezier(0.4, 0, 0.2, 1);
}

@keyframes modalLeave {
  from {
    opacity: 1;
    transform: scale(1) translateY(0);
  }
  to {
    opacity: 0;
    transform: scale(0.95) translateY(-20px);
  }
}

/* 添加标题样式 */
.dashboard-title {
  font-size: 28px;
  font-weight: bold;
  color: rgba(24, 144, 255, 0.8); /* 修改为浅蓝色，与下划线协调 */
  text-align: center;
  margin-bottom: 32px;
  padding: 16px 0;
  position: relative;
  display: inline-block;
  left: 50%;
  transform: translateX(-50%);
}

.dashboard-title::after {
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
  height: 3px;
  background: linear-gradient(
    to right,
    rgba(24, 144, 255, 0.2),
    rgba(24, 144, 255, 0.8) 50%,
    rgba(24, 144, 255, 0.2)
  );
  border-radius: 1.5px;
}

/* 添加新的样式 */
.project-main {
  width: 100%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0; /* 移除额外的内边距 */
  margin-bottom: 0;
}

.project-title {
  font-size: 24px;
  font-weight: 550;
  color: #1a1a1a;
  letter-spacing: 0.3px;
  line-height: 1.2;
  margin: 0;
  padding: 12px;
  display: block;
  text-align: left;
  cursor: pointer;
  transition: all 0.2s ease;

  &:hover {
    color: #1890ff;
  }
}

.project-sub-items {
  width: 100%;
  padding-left: 16px; /* 与标题保持一致的左侧内边距 */
  margin-top: 0;
}

/* .sub-item {
  font-size: 20px;
  color: #666;
  margin: 0;
  padding: 8px 0 8px 16px; 
  text-align: left;
  position: relative;
  line-height:1.4;
} */

.content-input-group {
  display: flex;
  gap: 12px;
  align-items: center;
}

.content-list {
  margin-top: 12px;
  padding: 8px 0;
}

.content-item {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 4px 0;
  color: #666;
  font-size: 14px;
}

:deep(.n-button.n-button--primary-type) {
  border-radius: 0;
}

:deep(.n-input) {
  border: 1px solid #1890ff;
  border-radius: 0;
}

:deep(.n-input__input-el) {
  height: 40px;
  padding: 0 18px;
}

:deep(.n-input-wrapper) {
  padding: 0;
}

/* 添加状态标签激活样式 */
.status-tag {
  cursor: pointer;
  transition: all 0.3s ease;

  &.active {
    transform: scale(1.1);
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  }
}

/* 下拉框样式 */
:deep(.n-select) {
  width: 100%;
}

:deep(.n-select .n-base-selection) {
  border: 1px solid #1890ff;
  border-radius: 0;
}

:deep(.n-base-selection-input__content) {
  height: 40px;
  line-height: 40px;
}

/* 统一输入框样式 */
:deep(.n-input__input-el),
:deep(.n-base-selection-input__content) {
  height: 40px;
  line-height: 40px;
  padding: 0 12px; /* 统一左右内边距 */
}

:deep(.n-input) {
  border: 1px solid #1890ff;
  border-radius: 0;
}

:deep(.n-select .n-base-selection) {
  border: 1px solid #1890ff;
  border-radius: 0;
}

/* 输入框占位符样式 */
:deep(.n-input__placeholder),
:deep(.n-base-selection-placeholder) {
  padding: 0 12px; /* 统一占位符文本的内边距 */
  color: #999;
}

/* 输入框文本样式 */
:deep(.n-input__input-el),
:deep(.n-base-selection-input__content) {
  font-size: 14px;
  color: #333;
}

/* 清除按钮位置调整 */
:deep(.n-input__clear),
:deep(.n-base-clear) {
  right: 12px;
}

/* 输入组样式 */
.input-group {
  margin-bottom: 20px;
}

.input-label {
  display: flex;
  align-items: center;
  font-size: 15px;
  color: #333;
  margin-bottom: 8px;
  font-weight: 500;
}

/* 必填标记样式 */
.required {
  color: #ff4d4f;
  margin-left: 4px;
  font-size: 14px;
  font-family: SimSun, sans-serif;
}

/* 标题区域样式 */
.dashboard-header {
  display: flex;
  justify-content: space-between; /* 使用 space-between 布局 */
  align-items: center;
  margin-bottom: 24px;
  position: relative; /* 添加相对定位 */
}

/* .title-text {
  font-size: 24px;
  font-weight: 600;
  color: #1a1a1a;
  flex: 1;
} */

.header-right {
  position: absolute; /* 使用绝对定位 */
  right: 0; /* 靠右对齐 */
  top: 50%; /* 垂直居中 */
  transform: translateY(-50%);
}

.week-select {
  width: 120px;
}

/* 下拉框样式 */
:deep(.n-select) {
  .n-base-selection {
    border: 1px solid #1890ff;
    border-radius: 0;
  }

  .n-base-selection-input__content {
    height: 32px;
    line-height: 32px;
  }
}

/* 添加新的样式 */
.project-list-item {
  display: flex;
  flex-direction: column;
  gap: 8px;
  padding: 0 !important;
  margin-bottom: 16px;
}

.project-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 16px 20px;
  /* background: rgba(255, 255, 255, 0.5); */
  /* border-bottom: 2px solid rgba(0, 0, 0, 0.06); */
  width: 100%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0; /* 移除额外的内边距 */
  margin-bottom: 0;
}

.project-body {
  padding: 4px 20px; /* 减小上下内边距 */
  font-size: 20px;
  color: #666;
  margin: 0;
  text-align: left;
  position: relative;
  line-height: 0.8;
}

.project-title {
  font-size: 24px;
  font-weight: 550;
  color: #1a1a1a;
  letter-spacing: 0.3px;
  line-height: 1.2;
  cursor: pointer;
  transition: all 0.2s ease;

  &:hover {
    color: #1890ff;
  }
}

.sub-item {
  font-size: 20px;
  color: #666;
  padding: 2px 0 2px 16px; /* 进一步减小上下内边距 */
  line-height: 1.4; /* 进一步减小行高 */
  position: relative;
}

/* 修改项目卡片样式以适应新的结构 */
.project-card.green :deep(.n-list-item) {
  background: rgba(82, 196, 26, 0.05);
  border: 1px solid rgba(82, 196, 26, 0.1);
  margin-bottom: 0px; /* 减小项目之间的间距 */

  &:last-child {
    margin-bottom: 0;
  }

  &:hover {
    background: rgba(82, 196, 26, 0.1);
  }
}

.project-card.blue :deep(.n-list-item) {
  background: rgba(24, 144, 255, 0.05);
  border: 1px solid rgba(24, 144, 255, 0.1);
  margin-bottom: 0px; /* 减小项目之间的间距 */

  &:last-child {
    margin-bottom: 0;
  }

  &:hover {
    background: rgba(24, 144, 255, 0.1);
  }
}

.project-card.orange :deep(.n-list-item) {
  background: rgba(250, 140, 22, 0.05);
  border: 1px solid rgba(250, 140, 22, 0.1);
  margin-bottom: 0px; /* 减小项目之间的间距 */

  &:last-child {
    margin-bottom: 0;
  }

  &:hover {
    background: rgba(250, 140, 22, 0.1);
  }
}
</style>
